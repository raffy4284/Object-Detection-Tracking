#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
using namespace cv;
using namespace std;

Mat canny_output,src, gausblur, mask,hsv,drawing;
int thresh = 200;
int max_thresh = 255;
RNG rng(12345);
int contouring();

/** @function main */
int main( int argc, char** argv )
{
  cv::VideoCapture camera(0);
  camera.set(CV_CAP_PROP_FRAME_WIDTH,640);
  camera.set(CV_CAP_PROP_FRAME_HEIGHT,480);
  camera.set(CV_CAP_PROP_FPS,20);
  while(1){
    /// Load source image and convert it to gray
    camera >> src;
    std::vector<Vec3f> circles;
    GaussianBlur( src, gausblur, cv::Size(9, 9), 2, 2 );
    cvtColor(gausblur,hsv,COLOR_BGR2HSV);
    inRange(hsv,Scalar(22,0,149),Scalar(300,252,255),mask);
    erode(mask, mask, getStructuringElement(MORPH_ELLIPSE, Size(10, 10)) );
    dilate( mask, mask, getStructuringElement(MORPH_ELLIPSE, Size(10, 10)) ); 
    //get circleCVs!
    HoughCircles(mask, circles, CV_HOUGH_GRADIENT,
    3,   // accumulator resolution (size of the image / 2)
    30,  // minimum distance between two circles
    50, // Canny high threshold
    100, // minimum number of votes
    0, 100); // min and max radius

    std::vector<cv::Vec3f>::const_iterator itc= circles.begin();
    printf("%d\n",circles.size());
    while (itc!=circles.end()) {

      cv::circle(mask,
      cv::Point((*itc)[0], (*itc)[1]), // circle centre
      (*itc)[2],       // circle radius
      cv::Scalar(255), // color
      2);              // thickness
      ++itc;
    }
    cv::imshow("image",mask);
    //Wait for a key to be pressed
    if (cv::waitKey(30) >= 0) break;






  }
  waitKey(0);
  return(0);
}

