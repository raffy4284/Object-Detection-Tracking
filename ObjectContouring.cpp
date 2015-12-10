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
vector<Moments> contouring();

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

    GaussianBlur( src, gausblur, cv::Size(9, 9), 2, 2 );
    cvtColor(gausblur,hsv,COLOR_BGR2HSV);
    inRange(hsv,Scalar(22,0,149),Scalar(300,252,255),mask);
    erode(mask, mask, getStructuringElement(MORPH_ELLIPSE, Size(10, 10)) );
    dilate( mask, mask, getStructuringElement(MORPH_ELLIPSE, Size(10, 10)) ); 

    /// Convert image to gray and blur it
    blur(mask, mask, Size(3,3));

    /// Create Window
    vector<Moments> items = contouring();
    cout << items.size() << endl;
  }
  waitKey(0);
  return(0);
}

/** @function thresh_callback */
vector<Moments> contouring()
{
  
  vector<vector<Point> > contours;
  vector<Vec4i> hierarchy;

  /// Detect edges using canny
  Canny( mask, mask, thresh, thresh*2, 3 );

  /// Find contours
  findContours( mask, contours, hierarchy, CV_RETR_LIST, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );


  vector<Moments> mu(contours.size() );

  /// Draw contours
  Mat drawing = Mat::zeros( mask.size(), CV_8UC3 );
  for( int i = 0; i< contours.size(); i++ ){
    Scalar color = Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
    double area = contourArea(contours[i], true);
    if (area < 300 )
      continue;
    mu[i] = moments( contours[i], false );
  }



  ///  Get the mass centers:
  vector<Point2f> mc( mu.size() );
  for( int i = 0; i < mu.size(); i++ ){
    mc[i] = Point2f( mu[i].m10/mu[i].m00 , mu[i].m01/mu[i].m00 ); 
  }

  for( int i = 0; i< mu.size(); i++ ){
    Scalar color = Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
    float radius = pow(mu[i].m00/3.14,0.5);

    //drawContours( src, contours, i, color, 2, 8, hierarchy, 0, Point() );
    circle( src, mc[i], radius, color, -1, 8, 0 );
  }





  /// Show in a window
  namedWindow( "original", CV_WINDOW_AUTOSIZE );
  imshow( "original", src );
  return mu;
}
