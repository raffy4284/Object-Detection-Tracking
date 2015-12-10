#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>


using namespace cv;
using namespace std;

int lowH;
int lowS;
int lowV;
int highH;
int highS;
int highV;
Mat src;
const char * window_name = "calibrateFrame";
void calibrateCallback(int, void*);

int main(int argc, char** argv ){
	cv::VideoCapture camera(0);
	camera.set(CV_CAP_PROP_FRAME_WIDTH,640);
	camera.set(CV_CAP_PROP_FRAME_HEIGHT,480);
	camera.set(CV_CAP_PROP_FPS,20);
	namedWindow(window_name, 1);
	cv::createTrackbar("highH",window_name,&highH,300,calibrateCallback);
	cv::createTrackbar("highS",window_name,&highS,255,calibrateCallback);
	cv::createTrackbar("highV",window_name,&highV,255,calibrateCallback);
	cv::createTrackbar("lowH",window_name,&lowH,300,calibrateCallback);
	cv::createTrackbar("lowS",window_name,&lowS,255,calibrateCallback);
	cv::createTrackbar("lowV",window_name,&lowV,255,calibrateCallback);

	while(1){
		camera >> src;
		calibrateCallback(0,0);
		waitKey(0);
		printf("lowH: %d\n",lowH);
		printf("lowS: %d\n", lowS);
		printf("lowV: %d\n", lowV);
		printf("highH: %d\n", highH);
		printf("highS: %d\n", highS);
		printf("highV: %d\n", highV);


	waitKey(0);
	}
	waitKey(0);
	return 0;


}

void calibrateCallback(int,void*){
	Mat imgHSV;
	cvtColor(src, imgHSV,COLOR_BGR2HSV);
	inRange(imgHSV, Scalar(lowH, lowS, lowV), Scalar(highH, highS, highV), imgHSV);

	erode(imgHSV, imgHSV, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );
	dilate( imgHSV, imgHSV, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) ); 
	dilate( imgHSV, imgHSV, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) ); 
  	erode(imgHSV, imgHSV, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );

  	imshow(window_name,imgHSV);
}


