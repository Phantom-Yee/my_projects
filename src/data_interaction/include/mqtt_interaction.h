#include <arpa/inet.h>
#include <geometry_msgs/PoseStamped.h>
#include <libgen.h> // for dirname
#include <mosquitto.h>
#include <ros/ros.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Char.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32MultiArray.h>
#include <std_msgs/Float64MultiArray.h>
#include <std_msgs/Int32.h>
#include <std_msgs/Int8.h>
#include <std_msgs/Int8MultiArray.h>
#include <std_msgs/UInt8.h>
#include <std_msgs/UInt8MultiArray.h>
#include <sensor_msgs/NavSatFix.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <yaml-cpp/yaml.h>
#include <chrono>
#include <thread>
#include "custom_msgs/VehicleStat.h"
#include "custom_msgs/NaviData.h"
#include "custom_msgs/ControlMode.h"
#include "custom_msgs/CurPose.h"
//停车、AEB、正常行驶
#include "custom_msgs/Request.h"
#include <fstream>
#include <sstream>
#include <iostream>






typedef struct VehicleStatus{
    uint16_t id;                //车辆ID
    double   longitude;         //车辆经度
    double   latitude;          //车辆纬度
    float    speed;             //车辆速度
    int8_t   VCU_top_height;    //旋耕刀当前高度
    uint8_t  engineRPM;         //发动机转速
    uint8_t  throttlePercent;   //油门百分比
    uint8_t  hydraulicPressure; //主液压压力
}VehicleStatus;

typedef struct CurPoseData {
  double x;
  double y;
  double theta;
  double s;
  double d;
}CurPoseData;