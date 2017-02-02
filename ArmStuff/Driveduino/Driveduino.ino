//driveduino
#include "Arduino.h"
#include "ros.h"
#include <std_msgs/UInt16.h>
#include <std_msgs/Float32.h>

#include "Motor.h"
#include "Encoder.h"

//Left Motor pins
#define _leftFront 0
#define _leftMid 1
#define _lefRear 2
//Left Direction Pins
#define _leftFrontD 3
#define _leftMidD 4
#define _leftReadD 5

//Right Motor Pins
#define _rightFront 6
#define _rightMid 7
#define _rightRear 8
//Right Direction Pins
#define _rightFrontD 9
#define _rightMidD	10
#define _rightReadD 11

//Motor Declarations
Motor leftFrontMotor = Motor(_leftFront, _leftFrontD);
Motor leftMidMotor = Motor(_leftMid, _leftMidD);
Motor leftRearMotor = Motor(_leftRear, _leftRearD);
Motor rightFrontMotor = Motor(_rightFront, _rihgtFrontD);
Motor rightMidMotor = Motor(_rightMid, _rightMidD);
Motor rightRearMotor = Motor(_rightRear, _rightRearD);

//left encoder pins
#define _lfEncA 12
#define _lfEncB 13
#define _lmEncA 14
#define _lmEncB 15
#define _lrEncA 16
#define _lrEncB 17
//right encoder pins
#define _rfEncA 18
#define _rfEncB 19
#define _rmEncA 20
#define _rmEncB 21
#define _rrEncA 22
#define _rrEncB 23

//Encoder Declarations
Encoder leftFrontEnc = Encoder(_lfEncA, _lfEncB);
Encoder leftMidEnc = Encoder(_lmEncA, _lmEncB);
Encoder leftReadEnc = Encoder(_lrEncA, _lrEncB);
Encoder rightFrontEnc = Encoder(_rfEncA, _rfEncB);
Encoder rightMidEnc = Encoder(_rmEncA, _rfEncB);
Encoder rightReadEnc= Encoder(_rrEncA, _rrEncB);

//ros node handle
ros::NodeHandle nh;

//ros subscribers
void setLeftFrontSpeed(const std_msgs::Float32& cmd_msg){
	leftFrontMotor.doMotorsPWM(cmd_msg);
}
ross::Subscriber<std_msgs::Float32> _setLeftFrontSpeed("setLeftFrontSpeed",setLeftFrontSpeed);
//ros publishers
std_msgs::UInt16 getLeftFrontPosition;
ros::Publisher _getLeftFrontPosition("getLeftFrontPosition", &getLeftFrontPosition);

void setup() {
	nh.initNode();//initialize the node handle
	initializePublishers();
	initializeSubscribers();
}
void loop() {
	updatePublishers();
	nh.spinOnce();//required
}
void initializeSubscribers(){

}
void initializePublishers(){
	nh.advertise(_getLeftFrontPosition);
}
void updatePublishers(){
	//set data
	getLeftFrontPosition.data = leftFrontEnc.getEncoderValues();
	//publish data
	_getLeftFrontPosition.publish(&getLeftFrontPosition);
}
