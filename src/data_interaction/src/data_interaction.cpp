#include"mqtt_interaction.h"
#include "gnss_gridmap/localization.h"
#include "distance.h"
#include <curl/curl.h>

using namespace std;

// CURL 写入回调函数
size_t WriteCallback(void *contents, size_t size, size_t nmemb, void *userp) {
    ((std::string*)userp)->append((char*)contents, size * nmemb);
    return size * nmemb;
}

// 下载文件内容的函数
std::string downloadUrl(const std::string& url) {
    CURL *curl;
    CURLcode res;
    std::string readBuffer;

    curl = curl_easy_init();
    if(curl) {
        curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
        // 设置超时
        curl_easy_setopt(curl, CURLOPT_TIMEOUT, 10L);
        // 跟随重定向
        curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 1L);
        // 设置回调
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
        // 忽略 SSL 验证（如果是自签名证书或测试环境）
        curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, 0L);
        curl_easy_setopt(curl, CURLOPT_SSL_VERIFYHOST, 0L);

        res = curl_easy_perform(curl);
        if(res != CURLE_OK) {
            std::string error_msg = "curl_easy_perform() failed: " + std::string(curl_easy_strerror(res));
            curl_easy_cleanup(curl);
            throw std::runtime_error(error_msg);
        }
        curl_easy_cleanup(curl);
    } else {
        throw std::runtime_error("Failed to init CURL");
    }
    return readBuffer;
}

#define BUFFER_SIZE 1024

double g_heading = 66.22;   
double g_vehicle_x = 0;
double g_vehicle_y = 0; 
bool g_got_heading = false;
bool g_pose_ready = false;


struct CloudConfig
{
  std::string mqtt_ip_str;
  string dispatch_cloud_ip;
  std::string client_id;
  int vehicle_id;

  string light_topic;
  string control_topic;

};

struct PublisherData
{
  ros::Publisher pub1;
  ros::Publisher pub2;
  ros::Publisher pub3;
  ros::Publisher pub4;
  ros::Publisher pub5;
  ros::Publisher pub6;
};
PublisherData data;
// float car_angle = 0, car_speed = 0, car_brake = 0;
// double x_positon = 0, y_position = 0;
// int soc = 0, gear = 0, shangdian = 1;
// double px, py, pz, ox, oy, oz, ow;
// int red, green, yellow;
// std_msgs::Float32 speed_data, left_steer_data, right_steer_data, brake_data;
mosquitto *client;
CloudConfig configData;
bool is_connected = false;
Gnss* local = nullptr; 
int init_vehicle();
void connectCallback(struct mosquitto *mosq, void *obj, int result);
void on_disconnect(struct mosquitto *mosq, void *obj, int rc);
void timerCallback(const ros::TimerEvent &);
void on_message(struct mosquitto *mosq, void *userdata,
                const struct mosquitto_message *message);


VehicleStatus veh_status = {2,0,0,0,0,0,0,0}; //车辆状态信息
int control_command = 0;

// 上传路径轨迹文件到云服务器
int UploadTrajectoryFile(const std::string &file_path, const std::string &topic)
{
  // std::string topic = "farm/path/finish";

  std::ifstream file(file_path);
  if (!file)
  {
    std::cerr << "无法打开轨迹文件: " << file_path << std::endl;
    return -1;
  }

  std::ostringstream buffer;
  std::string line;

  // 读取每一行，格式为 "x y"，拼成 CSV 格式 "x,y\nx,y\n..."
  while (std::getline(file, line))
  {
    std::istringstream iss(line);
    double x, y;
    if (!(iss >> x >> y)) continue;  // 跳过格式错误行

    buffer << x << "," << y << "\n";
  }

  std::string payload = buffer.str();

  if (payload.empty())
  {
    std::cerr << "轨迹文件为空或格式有误。" << std::endl;
    return -2;
  }

//   if (payload.size() > 256 * 1024)
//   {
//     std::cerr << "轨迹数据过大,MQTT 单次发送受限(超过256KB)" << std::endl;
//     return -3;
//   }

  int rc = mosquitto_publish(client, NULL, topic.c_str(),
                             static_cast<int>(payload.size()), payload.c_str(),
                             0, false);

  if (rc == MOSQ_ERR_SUCCESS)
  {
    std::cout << " 成功上传轨迹，大小: " << payload.size() << " 字节" << std::endl;
    return 0;
  }
  else
  {
    std::cerr << " MQTT 发送失败: " << mosquitto_strerror(rc) << std::endl;
    return -4;
  }
}

// 字符串分割工具函数（按逗号分割） 数据格式："field_id,lat1,lon1,lat2,lon2,lat3,lon3"
std::vector<std::string> splitString(const std::string& str, char delimiter) {
    std::vector<std::string> tokens;
    std::string token;
    std::istringstream tokenStream(str);
    while (std::getline(tokenStream, token, delimiter)) {
        if (!token.empty()) {  // 跳过空字符串（避免连续分隔符）
            tokens.push_back(token);
        }
    }
    return tokens;
}

std::vector<std::string> splitByLine(const std::string& str) {
    std::vector<std::string> lines;
    std::string line;
    std::istringstream lineStream(str);
    while (std::getline(lineStream, line)) {  // 按\n分割
        if (!line.empty()) {  // 跳过空行
            lines.push_back(line);
        }
    }
    return lines;
}

void handlePathGenerationRequest(const std::string& raw_payload) {
    std::string payload = raw_payload;

    // 1. 检查是否为 URL
    if (payload.find("http://") == 0 || payload.find("https://") == 0) {
        ROS_INFO("检测到路径请求包含 URL: %s", payload.c_str());
        try {
            // 去除可能的首尾空白字符
            payload.erase(0, payload.find_first_not_of(" \t\n\r"));
            payload.erase(payload.find_last_not_of(" \t\n\r") + 1);
            
            payload = downloadUrl(payload);
            ROS_INFO("成功下载任务点文件，大小: %zu 字节", payload.size());
        } catch (const std::exception& e) {
            ROS_ERROR("下载任务点文件失败: %s", e.what());
            return;
        }
    }

     ROS_INFO("收到路径生成请求, 数据长度: %zu", payload.length());

    try {
        // 分割数据（每行格式：lat,lon 或 lat lon）
        std::vector<std::string> lines = splitByLine(payload);
        if (lines.empty()) {
            ROS_ERROR("数据为空或无法分割行，无法解析");
            return;
        }
        ROS_INFO("解析出行数: %zu", lines.size());

        std::vector<LatLonPoint> field_points;

        for (size_t line_idx = 0; line_idx < lines.size(); ++line_idx) {
            const std::string& line = lines[line_idx];

            std::string clean_line = line;
            if (!clean_line.empty() && clean_line.back() == '\r') {
                clean_line.pop_back();
            }
            
            // 尝试逗号分割
            std::vector<std::string> tokens = splitString(clean_line, ',');
            
            // 如果逗号分割失败，尝试空格分割
            if (tokens.size() != 2) {
                tokens = splitString(clean_line, ' ');
            }

            if (tokens.size() != 2) {
                // 再次尝试制表符
                tokens = splitString(clean_line, '\t');
            }

            if (tokens.size() != 2) {
                ROS_WARN("第%d行格式错误或忽略！应为'lat,lon'或'lat lon'，实际内容: '%s'", 
                         line_idx + 1, clean_line.c_str());
                continue; 
            }
            
            //lat在tokens[0]，lon在tokens[1]
            double lat, lon;
            try {
                lon = std::stod(tokens[0]);  // 第一列是经度
                lat = std::stod(tokens[1]);  // 第二列是纬度
            } catch (const std::exception& e) {
                ROS_ERROR("第%d行经纬度转换失败（lat=%s, lon=%s）：%s", 
                         line_idx + 1, tokens[0].c_str(), tokens[1].c_str(), e.what());
                continue;
            }
            field_points.push_back({lat, lon});
        }
            ROS_INFO("成功解析 %zu 个有效经纬度点", field_points.size());
            
            if (field_points.size() < 3) {
                ROS_WARN("有效点数过少 (%zu)，可能无法生成有效区域", field_points.size());
            }

            
            std::stringstream ss;
            ss.precision(9);
            ss << std::fixed;
            for (size_t i = 0; i < field_points.size(); ++i) {
                ss << field_points[i].lon << "," << field_points[i].lat;

                ss << ";";
            }
            std::string boundary_points_str = ss.str();
            
            ros::NodeHandle nh("~");

            nh.setParam("BoustrophedonSTC/boundary_points", boundary_points_str);
            nh.setParam("BoustrophedonSTC/use_custom_boundary", true);
            nh.setParam("BoustrophedonSTC/path_pattern", "contour_spiral"); // 强制使用等高线螺旋模式
            
            nh.setParam("BoustrophedonSTC/contour_spacing", 2.0);
            nh.setParam("BoustrophedonSTC/min_optimization_factor", 0.3);
            nh.setParam("BoustrophedonSTC/connection_step_factor", 0.5);
            nh.setParam("BoustrophedonSTC/min_layer_area_ratio", 0.1);
            nh.setParam("BoustrophedonSTC/max_contour_layers", 1000);
            nh.setParam("BoustrophedonSTC/robot_radius", 0.5);
            nh.setParam("BoustrophedonSTC/tool_radius", 1.0);
            
            ROS_INFO("已更新 ROS 参数: boundary_points (长度 %zu), use_custom_boundary=true", boundary_points_str.length());

        if (local) {

            // 生成路径
                char abs_path[PATH_MAX], abs_point_path[PATH_MAX];
                realpath(local->path_file.c_str(), abs_path);
                realpath(local->task_point_file.c_str(), abs_point_path);
                ROS_INFO("path_file : %s", abs_path);
                ROS_INFO("task_point_file : %s", abs_point_path);
                ROS_INFO("=== ------------------------- ===");
            try {
                ROS_INFO("Generating path...");
                // 调用路径生成。PathGenerate 会重新读取我们刚才设置的 ROS 参数
                local->PathGenerate();
                // local->publishPath();
                ROS_INFO("Path generated successfully.");
            } catch (const std::exception& e) {
                ROS_ERROR("Exception occurred during path generation: %s", e.what());
                return ;
            } catch (...) {
                ROS_ERROR("Unknown error occurred during path generation.");
                return ;
            }

            if (!local->path_file.empty()) {
                std::string topic = "farm/path/finish";
                int ret1 = UploadTrajectoryFile(local->path_file,topic);
                if (ret1 == 0) ROS_INFO("覆盖式路径上传成功: %s", local->path_file.c_str());
                else ROS_ERROR("覆盖式路径上传失败（错误码：%d）", ret1);
            } else {
                ROS_WARN("覆盖式路径文件路径为空，跳过上传");
            }

            if (!local->task_point_file.empty()) {
                std::string topic_1 = "farm/point/finish";
                int ret2 = UploadTrajectoryFile(local->task_point_file,topic_1);
                if (ret2 == 0) ROS_INFO("任务点上传成功: %s", local->task_point_file.c_str());
                else ROS_ERROR("任务点上传失败（错误码：%d）", ret2);
            } else {
                ROS_WARN("任务点文件路径为空，跳过上传");
            }
            // ROS_INFO("路径生成成功，路径数据表ID: %d", generated_path_data_id);
        } else {
            ROS_ERROR("路径生成器未初始化，无法生成路径");

        }
    } catch (const std::exception& e) {
        ROS_ERROR("路径生成失败: %s", e.what());

    }
    
}

// 订阅话题，接收消息
void reciveData(ros::Publisher &pub)
{

  std::string topic_str = "farm/vehicle/control/" + std::to_string(veh_status.id);
  std::string path_create_topic = "farm/path/create";
  std::string curpose_topic = "farm/vehicle/state";
  // 订阅主题
  mosquitto_subscribe(client,NULL,topic_str.c_str(),2);
  mosquitto_subscribe(client,NULL,path_create_topic.c_str(),2);
  mosquitto_subscribe(client,NULL,curpose_topic.c_str(),2);

  mosquitto_user_data_set(client, &pub);
  mosquitto_message_callback_set(client, on_message);
  mosquitto_connect_callback_set(client, connectCallback);
  mosquitto_disconnect_callback_set(client, on_disconnect);
  while (true)
  {
    // 循环处理消息
    mosquitto_loop_forever(client, -1, 1);
  }
}

// 回调函数，当收到订阅的主题消息时触发
void on_message(struct mosquitto *mosq, void *userdata,
                const struct mosquitto_message *message)
{
  std::string expected_topic = "farm/vehicle/control/" + std::to_string(veh_status.id);
  std::string expected_create_topic = "farm/path/create";
  std::string expected_curpose_topic = "farm/vehicle/state";
  std::string msg_topic = message->topic;
  cout << "主题：" << message->topic << endl;
  ros::Publisher* pub_ptr = static_cast<ros::Publisher*>(userdata);
  if (!pub_ptr) {
    std::cerr << "Publisher指针为空!" << std::endl;
    return;
  }
  if (msg_topic == expected_topic)
  {
    // 读取字符串信息
    std::string payload_str((char *)message->payload);
    try {
        int value = std::stoi(payload_str);

        // if (value == 1 || value == 2 || value == 4) {
            control_command = value;
            std::cout << "接收到控制指令: " << control_command << std::endl;

            switch (control_command) {
                case 1: std::cout << "上电指令\n"; break;
                case 2: std::cout << "启动指令\n"; break;
                case 4: std::cout << "熄火指令\n"; break;
            }
            if (pub_ptr && pub_ptr->getNumSubscribers() > 0) {
              std_msgs::Int8 msg;
              msg.data = control_command;
              pub_ptr->publish(msg);
            }
    }
    catch (std::exception &e) {
        std::cerr << "解析控制指令失败: " << e.what() << std::endl;
    }
  }
      // 处理路径生成请求话题
  else if (msg_topic == expected_create_topic) {
    std::string payload_str((char *)message->payload);
    try {
        handlePathGenerationRequest(payload_str);
        std::cout << "接收到路径请求下发指令 "<< std::endl;
    } catch (const std::exception& e) {
        std::cerr << "处理路径生成请求失败: " << e.what() << std::endl;
    }
  }
  //获取车辆heading
if (msg_topic == expected_curpose_topic) {
    std::string payload_str((char *)message->payload);
    std::istringstream iss(payload_str);
    std::string token;
    int index = 0;
    double heading = 0.0;

    while (std::getline(iss, token, ',') && index <= 2) {
        if (index == 0) {
            // 提取heading并转换
            try {
                heading = std::stod(token);
            } catch (...) {
                ROS_ERROR("heading swtich lost：%s", token.c_str());
                return;
            }
        }
        index++;
    }
    if (heading >= 0.0 && heading <= 360.0) {
        g_heading = heading;
        g_pose_ready = true;
        ROS_INFO("heading=%.2f°", heading);
    } else {
        ROS_WARN("heading default：%.2f°", heading);
    }
    return; 
  }
}

int init_vehicle()
{
  mosquitto_lib_init();

  // 创建 MQTT 客户端
    const char* client_id = "Agricultural_car";
    const char* mqtt_broker_ip = "1.14.126.39";
    int mqtt_port = 1883;
    int mqtt_heart =120;

    // 使用全局 client，去掉局部声明
    client = mosquitto_new(client_id, true, NULL);
    if (!client) {
        ROS_ERROR("Failed to create Mosquitto client.");
        return -1;
    }

    int ret = mosquitto_connect_async(client, mqtt_broker_ip, mqtt_port, mqtt_heart);
    if (ret != MOSQ_ERR_SUCCESS) {
        ROS_WARN("Failed to connect to MQTT broker initially: %s. Will retry in background...", mosquitto_strerror(ret));
        // 不要销毁 client，也不要返回 -1
        // 让 timerCallback 后续去重连
        is_connected = false;
    } else {
        is_connected = true; // 暂时标记为 true，实际连接状态由回调决定
    }

    std::string start_pose_fixed_str;
    if (!ros::param::get("~start_pose_fixed", start_pose_fixed_str)) {
        // ROS_FATAL("【初始化失败】未读取到start_pose_fixed（格式：z roll pitch）");
    }

    std::istringstream iss(start_pose_fixed_str);
    double start_z, start_roll, start_pitch;
    if (!(iss >> start_z >> start_roll >> start_pitch)) {
        // ROS_FATAL("【初始化失败】start_pose_fixed格式错误（需3个数值）");
    }

    std::string start_pose_str = 
        std::to_string(g_vehicle_x) + " " +    
        std::to_string(g_vehicle_y) + " " +   
        std::to_string(start_z) + " " +        
        std::to_string(start_roll) + " " +     
        std::to_string(start_pitch) + " " +    
        std::to_string(g_heading);             

  //供Gnss读取
  ros::param::set("~start_pose", start_pose_str);
  std::string verify_start_pose;
  if (!ros::param::get("~start_pose", verify_start_pose) || verify_start_pose != start_pose_str) {
      ROS_FATAL(" start_pose loss！");
      mosquitto_destroy(client);
      client = NULL;
      return -1;
  }
  ROS_INFO(" start_pose ：%s", start_pose_str.c_str());
  
  // 创建路径生成器实例
  local = new Gnss();
//   ROS_INFO("开始初始化 Gnss 参数...");
  if (!local->setbeginparameter()) {
    // ROS_ERROR("路径生成器参数初始化失败（请检查 ROS 参数配置）");
    delete local;
    local = nullptr;
    mosquitto_destroy(client);
    client = NULL;
    return -1;
  }

 
//   ROS_INFO("Gnss 初始化成功！关键参数：");
//   ROS_INFO("  - map_file: %s", local->map_file.c_str());  
//   ROS_INFO("  - robot_radius: %.2f m", local->robot_Radius);
//   ROS_INFO("  - path_file: %s", local->path_file.c_str());

    return 0;
}

void timerCallback(
    const ros::TimerEvent &) // 检测MQTT服务器连接状态,断开后自动重联
{
  if (!is_connected)
  { 
    ROS_WARN("MQTT connection lost. Reconnecting...");
    mosquitto_reconnect_async(client);
    std::string topic = "farm/vehicle/control/" + std::to_string(veh_status.id);
    std::string create_topic = "farm/path/create";
    std::string curpose_topic = "farm/vehicle/state";
    mosquitto_subscribe(client, NULL,topic.c_str(), 2);
    mosquitto_subscribe(client, NULL, create_topic.c_str(), 2);
    mosquitto_subscribe(client, NULL, curpose_topic.c_str(), 2);
  }
}

void connectCallback(struct mosquitto *mosq, void *obj, int result)
{
  if (result == 0)
  {
    is_connected = true;
    ROS_INFO("MQTT connected successfully.");
  }
  else
  {
    is_connected = false;
    ROS_ERROR("MQTT connection failed: %s", mosquitto_connack_string(result));
  }
}
void on_disconnect(struct mosquitto *mosq, void *obj, int rc)
{
  ROS_WARN("MQTT disconnected. Trying to reconnect...");
  is_connected = false;
  sleep(5);
  mosquitto_reconnect_async(client);
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "data_interaction");
  ROS_INFO("------------data upload start------------");
 
  int init_ret = init_vehicle();
  if (init_ret != 0) {
    ROS_FATAL("init_vehicle fail");
    return -1;
  }

  // init_vehicle();//初始化mqtt服务器
  // UploadTrajectoryFile("/home/nvidia/Agricultural_Car/txt2pg/boustrophedon.txt");//上传txt文件
  // std::string file_path = "/home/nvidia/Agricultural_Car/txt2pg/boustrophedon.txt";
  ros::NodeHandle nodeHandle;
  // ros::Subscriber sub_navi = nodeHandle.subscribe("/navi_msg",1,onNaviMsgRecvd);//接受车辆定位
  
//   ros::Subscriber sub_veh_statu = nodeHandle.subscribe("/VehicleStat",1,onVehMsgRecvd);//接受车辆状态
  //发布车辆控制信息
  ros::Publisher  pub_ctrl = nodeHandle.advertise<std_msgs::Int8>("/mqtt/control_messges", 1);
  //开启线程
  ros::Timer time = nodeHandle.createTimer(ros::Duration(5.0), timerCallback);
  std::thread loop_thread(reciveData, std::ref(pub_ctrl));
  loop_thread.detach();
  // std::thread loop_thread1(VehicleStateUpload);
  // loop_thread1.detach();
  // std::thread loop_thread2(UploadTrajectoryFile,std::ref(file_path));

  ros::spin();

  if (local != nullptr) {
      delete local;
      local = nullptr;
  }
  if (client != nullptr) {
      mosquitto_destroy(client);
      client = nullptr;
  }
  mosquitto_lib_cleanup();

  return 0;
}
