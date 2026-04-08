;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::NaviData)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'NaviData (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::NAVIDATA")
  (make-package "CUSTOM_MSGS::NAVIDATA"))

(in-package "ROS")
;;//! \htmlinclude NaviData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_msgs::NaviData
  :super ros::object
  :slots (_head _pitch _roll _heading _longitude _latitude _altitude _speed2d _Ve _Vn _Vu _pose_type _gpsTime _INS_Status _Lat_vari _Lon_vari ))

(defmethod custom_msgs::NaviData
  (:init
   (&key
    ((:head __head) (instance std_msgs::Header :init))
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:heading __heading) 0.0)
    ((:longitude __longitude) 0.0)
    ((:latitude __latitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:speed2d __speed2d) 0.0)
    ((:Ve __Ve) 0.0)
    ((:Vn __Vn) 0.0)
    ((:Vu __Vu) 0.0)
    ((:pose_type __pose_type) 0)
    ((:gpsTime __gpsTime) 0.0)
    ((:INS_Status __INS_Status) 0)
    ((:Lat_vari __Lat_vari) 0.0)
    ((:Lon_vari __Lon_vari) 0.0)
    )
   (send-super :init)
   (setq _head __head)
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   (setq _heading (float __heading))
   (setq _longitude (float __longitude))
   (setq _latitude (float __latitude))
   (setq _altitude (float __altitude))
   (setq _speed2d (float __speed2d))
   (setq _Ve (float __Ve))
   (setq _Vn (float __Vn))
   (setq _Vu (float __Vu))
   (setq _pose_type (round __pose_type))
   (setq _gpsTime (float __gpsTime))
   (setq _INS_Status (round __INS_Status))
   (setq _Lat_vari (float __Lat_vari))
   (setq _Lon_vari (float __Lon_vari))
   self)
  (:head
   (&rest __head)
   (if (keywordp (car __head))
       (send* _head __head)
     (progn
       (if __head (setq _head (car __head)))
       _head)))
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:speed2d
   (&optional __speed2d)
   (if __speed2d (setq _speed2d __speed2d)) _speed2d)
  (:Ve
   (&optional __Ve)
   (if __Ve (setq _Ve __Ve)) _Ve)
  (:Vn
   (&optional __Vn)
   (if __Vn (setq _Vn __Vn)) _Vn)
  (:Vu
   (&optional __Vu)
   (if __Vu (setq _Vu __Vu)) _Vu)
  (:pose_type
   (&optional __pose_type)
   (if __pose_type (setq _pose_type __pose_type)) _pose_type)
  (:gpsTime
   (&optional __gpsTime)
   (if __gpsTime (setq _gpsTime __gpsTime)) _gpsTime)
  (:INS_Status
   (&optional __INS_Status)
   (if __INS_Status (setq _INS_Status __INS_Status)) _INS_Status)
  (:Lat_vari
   (&optional __Lat_vari)
   (if __Lat_vari (setq _Lat_vari __Lat_vari)) _Lat_vari)
  (:Lon_vari
   (&optional __Lon_vari)
   (if __Lon_vari (setq _Lon_vari __Lon_vari)) _Lon_vari)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _head
    (send _head :serialization-length)
    ;; float32 _pitch
    4
    ;; float32 _roll
    4
    ;; float32 _heading
    4
    ;; float64 _longitude
    8
    ;; float64 _latitude
    8
    ;; float64 _altitude
    8
    ;; float32 _speed2d
    4
    ;; float32 _Ve
    4
    ;; float32 _Vn
    4
    ;; float32 _Vu
    4
    ;; int32 _pose_type
    4
    ;; float64 _gpsTime
    8
    ;; int32 _INS_Status
    4
    ;; float32 _Lat_vari
    4
    ;; float32 _Lon_vari
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _head
       (send _head :serialize s)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _speed2d
       (sys::poke _speed2d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Ve
       (sys::poke _Ve (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Vn
       (sys::poke _Vn (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Vu
       (sys::poke _Vu (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _pose_type
       (write-long _pose_type s)
     ;; float64 _gpsTime
       (sys::poke _gpsTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _INS_Status
       (write-long _INS_Status s)
     ;; float32 _Lat_vari
       (sys::poke _Lat_vari (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Lon_vari
       (sys::poke _Lon_vari (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _head
     (send _head :deserialize buf ptr-) (incf ptr- (send _head :serialization-length))
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _speed2d
     (setq _speed2d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Ve
     (setq _Ve (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Vn
     (setq _Vn (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Vu
     (setq _Vu (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _pose_type
     (setq _pose_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _gpsTime
     (setq _gpsTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _INS_Status
     (setq _INS_Status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _Lat_vari
     (setq _Lat_vari (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Lon_vari
     (setq _Lon_vari (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_msgs::NaviData :md5sum-) "7bf1fc8c7c8a4b0662c1e912fa5e0615")
(setf (get custom_msgs::NaviData :datatype-) "custom_msgs/NaviData")
(setf (get custom_msgs::NaviData :definition-)
      "#---------------------------------------------------------------------------------------------
#导航信息
#来源于GNSS，INS设备

# 50 NARROW_INT Integer narrow-lane ambiguity solution
# 56 INS_RTKFIXED INS RTK fixed ambiguities solution
# 51 RTK_DIRECT_INS RTK status where the RTK filter is directly initialized from the INS filter
# 55 INS_RTKFLOAT INS RTK floating point ambiguities solution
# 52 INS_SBAS INS calculated position corrected for the antenna
# 54 INS_PSRDIFF INS pseudorange differential solution
# 53 INS_PSRSP INS pseudorange single point solution – no DGPS corrections
#-----------------------------------------------------------------------------------------------


std_msgs/Header head

float32 pitch          #俯仰角
float32 roll           #翻滚角
float32 heading        #航向角

float64 longitude      #经度
float64 latitude       #纬度
float64 altitude       #海拔

float32 speed2d        #车辆速度
# ----------------->
float32 Ve

float32 Vn

float32 Vu

# <-----------------

int32   pose_type      #定位状态
float64 gpsTime        #

int32 INS_Status       #解算状态
float32 Lat_vari       #纬度标准差
float32 Lon_vari       #经度标准差
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :custom_msgs/NaviData "7bf1fc8c7c8a4b0662c1e912fa5e0615")


