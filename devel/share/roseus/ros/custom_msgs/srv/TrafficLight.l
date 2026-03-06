;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::TrafficLight)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'TrafficLight (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::TRAFFICLIGHT")
  (make-package "CUSTOM_MSGS::TRAFFICLIGHT"))
(unless (find-package "CUSTOM_MSGS::TRAFFICLIGHTREQUEST")
  (make-package "CUSTOM_MSGS::TRAFFICLIGHTREQUEST"))
(unless (find-package "CUSTOM_MSGS::TRAFFICLIGHTRESPONSE")
  (make-package "CUSTOM_MSGS::TRAFFICLIGHTRESPONSE"))

(in-package "ROS")





(defclass custom_msgs::TrafficLightRequest
  :super ros::object
  :slots (_direction _longitude _latitude ))

(defmethod custom_msgs::TrafficLightRequest
  (:init
   (&key
    ((:direction __direction) 0.0)
    ((:longitude __longitude) 0.0)
    ((:latitude __latitude) 0.0)
    )
   (send-super :init)
   (setq _direction (float __direction))
   (setq _longitude (float __longitude))
   (setq _latitude (float __latitude))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:serialization-length
   ()
   (+
    ;; float32 _direction
    4
    ;; float64 _longitude
    8
    ;; float64 _latitude
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _direction
       (sys::poke _direction (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _direction
     (setq _direction (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(intern "*GREEN*" (find-package "CUSTOM_MSGS::TRAFFICLIGHTRESPONSE"))
(shadow '*GREEN* (find-package "CUSTOM_MSGS::TRAFFICLIGHTRESPONSE"))
(defconstant custom_msgs::TrafficLightResponse::*GREEN* 2)
(intern "*RED*" (find-package "CUSTOM_MSGS::TRAFFICLIGHTRESPONSE"))
(shadow '*RED* (find-package "CUSTOM_MSGS::TRAFFICLIGHTRESPONSE"))
(defconstant custom_msgs::TrafficLightResponse::*RED* 1)
(intern "*YELLOW*" (find-package "CUSTOM_MSGS::TRAFFICLIGHTRESPONSE"))
(shadow '*YELLOW* (find-package "CUSTOM_MSGS::TRAFFICLIGHTRESPONSE"))
(defconstant custom_msgs::TrafficLightResponse::*YELLOW* 4)
(intern "*INVALID*" (find-package "CUSTOM_MSGS::TRAFFICLIGHTRESPONSE"))
(shadow '*INVALID* (find-package "CUSTOM_MSGS::TRAFFICLIGHTRESPONSE"))
(defconstant custom_msgs::TrafficLightResponse::*INVALID* 0)

(defun custom_msgs::TrafficLightResponse-to-symbol (const)
  (cond
        ((= const 2) 'custom_msgs::TrafficLightResponse::*GREEN*)
        ((= const 1) 'custom_msgs::TrafficLightResponse::*RED*)
        ((= const 4) 'custom_msgs::TrafficLightResponse::*YELLOW*)
        ((= const 0) 'custom_msgs::TrafficLightResponse::*INVALID*)
        (t nil)))

(defclass custom_msgs::TrafficLightResponse
  :super ros::object
  :slots (_color _time ))

(defmethod custom_msgs::TrafficLightResponse
  (:init
   (&key
    ((:color __color) 0)
    ((:time __time) 0)
    )
   (send-super :init)
   (setq _color (round __color))
   (setq _time (round __time))
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; int32 _color
    4
    ;; int32 _time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _color
       (write-long _color s)
     ;; int32 _time
       (write-long _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _color
     (setq _color (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _time
     (setq _time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass custom_msgs::TrafficLight
  :super ros::object
  :slots ())

(setf (get custom_msgs::TrafficLight :md5sum-) "f9d59e96e2a4e7bdae125e6e2c0478a7")
(setf (get custom_msgs::TrafficLight :datatype-) "custom_msgs/TrafficLight")
(setf (get custom_msgs::TrafficLight :request) custom_msgs::TrafficLightRequest)
(setf (get custom_msgs::TrafficLight :response) custom_msgs::TrafficLightResponse)

(defmethod custom_msgs::TrafficLightRequest
  (:response () (instance custom_msgs::TrafficLightResponse :init)))

(setf (get custom_msgs::TrafficLightRequest :md5sum-) "f9d59e96e2a4e7bdae125e6e2c0478a7")
(setf (get custom_msgs::TrafficLightRequest :datatype-) "custom_msgs/TrafficLightRequest")
(setf (get custom_msgs::TrafficLightRequest :definition-)
      "#------------------------------
#交通灯请求
#------------------------------
float32 direction       #车辆即将开往的方向，单位°，以车头为0，顺时针为正方向
float64 longitude       #交通灯所在路口中心的经度
float64 latitude        #交通灯所在路口中心的纬度
---
int32 GREEN=2
int32 RED=1
int32 YELLOW=4
int32 INVALID=0

int32 color             # 1 red 2 green 3 黄色 -1无效
int32 time              # 剩余时间

")

(setf (get custom_msgs::TrafficLightResponse :md5sum-) "f9d59e96e2a4e7bdae125e6e2c0478a7")
(setf (get custom_msgs::TrafficLightResponse :datatype-) "custom_msgs/TrafficLightResponse")
(setf (get custom_msgs::TrafficLightResponse :definition-)
      "#------------------------------
#交通灯请求
#------------------------------
float32 direction       #车辆即将开往的方向，单位°，以车头为0，顺时针为正方向
float64 longitude       #交通灯所在路口中心的经度
float64 latitude        #交通灯所在路口中心的纬度
---
int32 GREEN=2
int32 RED=1
int32 YELLOW=4
int32 INVALID=0

int32 color             # 1 red 2 green 3 黄色 -1无效
int32 time              # 剩余时间

")



(provide :custom_msgs/TrafficLight "f9d59e96e2a4e7bdae125e6e2c0478a7")


