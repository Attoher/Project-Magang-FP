#include "ros/ros.h"
#include "IRIS24/PC2BS.h"
#include "IRIS24/BS2PC.h"
#include "opencv2/opencv.hpp"
#include "iostream"

using namespace std;
using namespace cv;

Mat image;
Point ballPosition;
int up = 255, down = 122;

void detectBallAndSend() {
    Mat grayImage, tres;
    medianBlur(image, image, 175);
    cvtColor(image, grayImage, COLOR_BGR2GRAY);
    inRange(grayImage, down, up, tres);

    vector<vector<Point>> contours;
    findContours(tres, contours, RETR_EXTERNAL, CHAIN_APPROX_SIMPLE);

    if (!contours.empty()) {
        Moments mu = moments(contours[0]);
        ballPosition = Point(mu.m10 / mu.m00, mu.m01 / mu.m00);

        Mat resultImage = image.clone();
        circle(resultImage, ballPosition, 10, Scalar(0, 0, 255), -1);

        IRIS24::BS2PC bs_msg;
        bs_msg.tujuan_x = ballPosition.x;
        bs_msg.tujuan_y = ballPosition.y;
        std::printf("%d %d\n", bs_msg.tujuan_x, bs_msg.tujuan_y);

        ros::NodeHandle nh;
        ros::Publisher bs_publisher = nh.advertise<IRIS24::BS2PC>("/bs2pc", 1);
        bs_publisher.publish(bs_msg);
    }
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "node_2");

    image = imread("/home/ubuntu/FP_ws/src/IRIS24/src/Bola3.jpg");

    // namedWindow("Detected Ball", WINDOW_AUTOSIZE);

    detectBallAndSend();

    ros::spin();

    return 0;
}
