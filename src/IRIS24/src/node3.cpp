#include "ros/ros.h"
#include "std_msgs/Int8.h"
#include "std_msgs/Int16.h"
#include "IRIS24/BS2PC.h"
#include "IRIS24/PC2BS.h"
#include "geometry_msgs/Twist.h"
#include <unistd.h>
#include <termios.h>
#include <math.h>

char inp;
bool toggle;
int jarakx=0,jaraky=0;
int stats;

char getch()
{
    char buf = 0;
    struct termios old = {0};
    if (tcgetattr(0, &old) < 0)
        perror("tcsetattr()");
    old.c_lflag &= ~ICANON;
    old.c_lflag &= ~ECHO;
    old.c_cc[VMIN] = 1;
    old.c_cc[VTIME] = 0;
    if (tcsetattr(0, TCSANOW, &old) < 0)
        perror("tcsetattr ICANON");
    if (read(0, &buf, 1) < 0)
        perror("read()");
    old.c_lflag |= ICANON;
    old.c_lflag |= ECHO;
    if (tcsetattr(0, TCSADRAIN, &old) < 0)
        perror("tcsetattr ~ICANON");
    return (buf);
}

class OverallProcessingNode {
public:
    ros::NodeHandle nh;
    ros::Subscriber bs2pc_sub;
    ros::Publisher pub;
    IRIS24::PC2BS msg_pc2bs;

    OverallProcessingNode() : nh() {
        bs2pc_sub = nh.subscribe("/bs2pc", 10, &OverallProcessingNode::bs2pcCallback, this);
        pub = nh.advertise<IRIS24::PC2BS>("/pc2bs", 1);
    }

    void bs2pcCallback(const IRIS24::BS2PC::ConstPtr& msg) {
        int8_t status = msg->status;
        stats = status;
        int16_t tujuan_x = msg->tujuan_x;
        int16_t tujuan_y = msg->tujuan_y;
        if (status == 1) {
            msg_pc2bs.pos_y=0;
            msg_pc2bs.pos_x=0;
            pub.publish(msg_pc2bs);
            while (true)
            {
                inp = getch();
                if(msg_pc2bs.bola_x<msg_pc2bs.pos_x+25&&msg_pc2bs.bola_y<msg_pc2bs.pos_y+25&&msg_pc2bs.bola_x>msg_pc2bs.pos_x-25&&msg_pc2bs.bola_y>msg_pc2bs.pos_y-25)
                shootBallz();
                ballHandle();
                controlRobotWithKeyboard();
                mapEror();
                if(inp=='q')break;
            }
            ros::spinOnce;     
        }
        else if (status == 3||status == 2)
        {
            if (status ==2){
            msg_pc2bs.pos_y = 0;
            msg_pc2bs.pos_x = 0;}
            jarakx = (tujuan_x - msg_pc2bs.pos_x);
            jaraky = (tujuan_y - msg_pc2bs.pos_y);
            ROS_INFO("(%d, %d), (%d, %d), (%d, %d)\n", tujuan_x, tujuan_y, jarakx, jaraky, msg_pc2bs.pos_x, msg_pc2bs.pos_y);

            while (jarakx != 0 || jaraky != 0)
            {
                if(abs(jarakx)<abs(jaraky)){
                    if (jarakx < 0)
                    {
                        msg_pc2bs.pos_x -= 1;
                    }
                    else if (jarakx > 0)
                    {
                        msg_pc2bs.pos_x += 1;
                    }
                    if (jaraky < 0)
                    {
                        msg_pc2bs.pos_theta = 180;
                        msg_pc2bs.pos_y -= 1;
                    }
                    else if (jaraky > 0)
                    {
                        msg_pc2bs.pos_theta = 0;
                        msg_pc2bs.pos_y += 1;
                    }
                }
                else{

                    if (jaraky < 0)
                    {
                        msg_pc2bs.pos_y -= 1;
                    }
                    else if (jaraky > 0)
                    {
                        msg_pc2bs.pos_y += 1;
                    }
                    if (jarakx < 0)
                    {
                        msg_pc2bs.pos_theta = -90;
                        msg_pc2bs.pos_x -= 1;
                    }
                    else if (jarakx > 0)
                    {
                        msg_pc2bs.pos_theta = 90;
                        msg_pc2bs.pos_x += 1;
                    }
                }
                jarakx = (tujuan_x - msg_pc2bs.pos_x);
                jaraky = (tujuan_y - msg_pc2bs.pos_y);
                ros::Duration(0.015).sleep();
                pub.publish(msg_pc2bs);
            }
        }
        
    }
    void controlRobotWithKeyboard() {
            switch (inp) {
            case 'w':
                msg_pc2bs.pos_y -= 2;
                msg_pc2bs.pos_theta = 180;
                break;
            case 's':
                msg_pc2bs.pos_y += 2;
                msg_pc2bs.pos_theta = 0;
                break;
            case 'a':
                msg_pc2bs.pos_x -= 2;
                msg_pc2bs.pos_theta = -90;
                break;
            case 'd':
                msg_pc2bs.pos_x += 2;
                msg_pc2bs.pos_theta = 90;
                break;
            default:
               break;
            }
        pub.publish(msg_pc2bs);
    }
    void ballHandle(){
        if (inp == 'z'){
            if (msg_pc2bs.bola_x<msg_pc2bs.pos_x+25&&msg_pc2bs.bola_y<msg_pc2bs.pos_y+25&&msg_pc2bs.bola_x>msg_pc2bs.pos_x-25&&msg_pc2bs.bola_y>msg_pc2bs.pos_y-25)
            {
                toggle=true;
            }
        }
        while (toggle)
        { 
            msg_pc2bs.bola_x = msg_pc2bs.pos_x;
            msg_pc2bs.bola_y = msg_pc2bs.pos_y;
            inp = getch();
            if (inp == 'x'){
                toggle=false;
                break;
            }
            shootBallz();
            switch (inp) {
            case 'w':
                msg_pc2bs.bola_y -= 2;
                break;
            case 's':
                msg_pc2bs.bola_y += 2;
                break;
            case 'a':
                msg_pc2bs.bola_x -= 2;
                break;
            case 'd':
                msg_pc2bs.bola_x += 2;
                break;
            default:
               break;
            }
            controlRobotWithKeyboard();
            mapEror();
        }
    }
    void shootBallz(){

        if (inp == 'o')
        {
            switch (msg_pc2bs.pos_theta)
            {
            case -90:{
                msg_pc2bs.bola_x -= 100;
                toggle=false;
                break;}
            
            case 90:{
                msg_pc2bs.bola_x += 100;
                toggle=false;
                break;}

            case 0:{
                msg_pc2bs.bola_y += 100;
                toggle=false;
                break;}

            case 180:{
                msg_pc2bs.bola_y -= 100;
                toggle=false;
                break;}

            default:
                break;
            }
        }
        else if (inp == 'p')
        {
            switch (msg_pc2bs.pos_theta)
            {
            case -90:{
                msg_pc2bs.bola_x -= 300;
                toggle=false;
                break;}
            
            case 90:{
                msg_pc2bs.bola_x += 300;
                toggle=false;
                break;}

            case 0:{
                msg_pc2bs.bola_y += 300;
                toggle=false;
                break;}

            case 180:{
                msg_pc2bs.bola_y -= 300;
                toggle=false;
                break;}

            default:
                break;
            }
        }
    }
    void mapEror(){
        if (msg_pc2bs.bola_x>948) msg_pc2bs.bola_x=948;
        else if (msg_pc2bs.bola_x<-52) msg_pc2bs.bola_x=-52;
        if (msg_pc2bs.bola_y>648) msg_pc2bs.bola_y=648;
        else if (msg_pc2bs.bola_y<-52) msg_pc2bs.bola_y=-52;
        if (msg_pc2bs.pos_x>948) msg_pc2bs.pos_x=948;
        else if (msg_pc2bs.pos_x<-52) msg_pc2bs.pos_x=-52;
        if (msg_pc2bs.pos_y>648) msg_pc2bs.pos_y=648;
        else if (msg_pc2bs.pos_y<-52) msg_pc2bs.pos_y=-52;
    }
};

int main(int argc, char** argv) {
    ros::init(argc, argv, "overall_processing_node");
    OverallProcessingNode overallNode;
    ros::spin();

    return 0;
}
