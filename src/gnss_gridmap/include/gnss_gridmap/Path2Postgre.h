#include <ros/ros.h>
#include <nav_msgs/Path.h>
#include <geometry_msgs/PoseStamped.h>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include <libpq-fe.h>


struct Point{
    double x;
    double y;
};

void savePathToFile(const nav_msgs::Path& path, const std::string& filename);
void clearFile(const std::string& filename);
void saveCoordinatesToDatabase(const std::string& filePath);
void saveEdgePathToDatabase(const std::string& filePath);