#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <ext/hash_set>

using namespace cv;
using namespace std;


  
Mat src; Mat src_gray;
int thresh = 200;
int max_thresh = 255;
RNG rng(12345);
Mat mask;
Mat gausdst, hsv;
Mat drawing;
int threshold_func();
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

    GaussianBlur( src, gausdst, cv::Size(9, 9), 2, 2 );
    cvtColor(gausdst,hsv,COLOR_BGR2HSV);
    inRange(hsv,Scalar(29,86,6),Scalar(64,255,255),mask);
    erode(mask, mask, getStructuringElement(MORPH_ELLIPSE, Size(10, 10)) );
    dilate( mask, mask, getStructuringElement(MORPH_ELLIPSE, Size(10, 10)) ); 

    /// Convert image to gray and blur it
    //cvtColor( src, src_gray, CV_BGR2GRAY );
    blur( mask, src_gray, Size(3,3) );

    /// Create Window
    char* source_window = "Source";

    std::cout << "FLAG"<<endl;
    std::cout  << threshold_func()<<endl;
  }
  waitKey(0);
  return(0);
}

/** @function thresh_callback */
int threshold_func()
{
  Mat canny_output;
  vector<vector<Point> > contours;
  vector<Vec4i> hierarchy;

  /// Detect edges using canny
  Canny( src_gray, canny_output, thresh, thresh*2, 3 );
  /// Find contours
  findContours( canny_output, contours, hierarchy, CV_RETR_LIST, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );

  /// Draw contours
  Mat drawing = Mat::zeros( canny_output.size(), CV_8UC3 );
  for( int i = 0; i< contours.size(); i++ ){
       Scalar color = Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
       double area = contourArea(contours[i], true);
       if (area < 500 )
        continue;
       std::cout << area << std::endl;
       drawContours( src, contours, i, color, 2, 8, hierarchy, 0, Point() );
     }

  /// Show in a window
  namedWindow( "original", CV_WINDOW_AUTOSIZE );
  imshow( "original", src );
  return contours.size();
}