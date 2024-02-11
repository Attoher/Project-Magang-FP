#include "ros/ros.h"
#include "IRIS24/PC2BS.h"
#include "IRIS24/BS2PC.h"
#include "opencv2/opencv.hpp"

using namespace std;
using namespace cv;

int main(int argc, char **argv) {
    ros::init(argc, argv, "node_1");
    ros::NodeHandle nh;

    Mat image = imread("/home/ubuntu/FP_ws/src/IRIS24/src/Bola1.jpg");

    resize(image, image, Size(900, 600));

    // imshow("Resized Image", image);
    waitKey(0);

    IRIS24::PC2BS pc_msg;
    pc_msg.pos_x = 0;
    pc_msg.pos_y = 0;

    ros::Publisher pc_publisher = nh.advertise<IRIS24::PC2BS>("/PC2BS", 1);
    pc_publisher.publish(pc_msg);

    ros::spin();

    return 0;
}
