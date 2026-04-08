#include <iostream>
#include <vector>
#include <cmath>
#include <algorithm>
#include <limits>
#include <fstream>
#include <string>
#include <vector>
#include <sstream>

struct LatLonPoint {
    double lat;  // 纬度
    double lon;  // 经度
};

// 平面直角坐标点（单位：米，x=东向，y=北向）
struct PlanePoint {
    double x;
    double y;
};

bool getMaxRectangleDimensions(const std::vector<LatLonPoint>& latlon_points,
                               double& max_rect_w, 
                               double& max_rect_h);

bool replaceFileValues(const std::string& file_path, int row_idx, int col_idx, int new_value);



// 全局常量
const double EARTH_RADIUS = 6371000.0;  // 地球半径（米）
const double EPS = 0.01;   