;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::Request)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'Request (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::REQUEST")
  (make-package "CUSTOM_MSGS::REQUEST"))

(in-package "ROS")
;;//! \htmlinclude Request.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*FORWARD_ENABLE*" (find-package "CUSTOM_MSGS::REQUEST"))
(shadow '*FORWARD_ENABLE* (find-package "CUSTOM_MSGS::REQUEST"))
(defconstant custom_msgs::Request::*FORWARD_ENABLE* 0)
(intern "*BACK_ENABLE*" (find-package "CUSTOM_MSGS::REQUEST"))
(shadow '*BACK_ENABLE* (find-package "CUSTOM_MSGS::REQUEST"))
(defconstant custom_msgs::Request::*BACK_ENABLE* 1)
(intern "*STOP_ENABLE*" (find-package "CUSTOM_MSGS::REQUEST"))
(shadow '*STOP_ENABLE* (find-package "CUSTOM_MSGS::REQUEST"))
(defconstant custom_msgs::Request::*STOP_ENABLE* 2)
(intern "*AEB_ENABLE*" (find-package "CUSTOM_MSGS::REQUEST"))
(shadow '*AEB_ENABLE* (find-package "CUSTOM_MSGS::REQUEST"))
(defconstant custom_msgs::Request::*AEB_ENABLE* 3)

(defun custom_msgs::Request-to-symbol (const)
  (cond
        ((= const 0) 'custom_msgs::Request::*FORWARD_ENABLE*)
        ((= const 1) 'custom_msgs::Request::*BACK_ENABLE*)
        ((= const 2) 'custom_msgs::Request::*STOP_ENABLE*)
        ((= const 3) 'custom_msgs::Request::*AEB_ENABLE*)
        (t nil)))

(defclass custom_msgs::Request
  :super ros::object
  :slots (_head _reques_type _run_speed _stop_distance _aeb_distance ))

(defmethod custom_msgs::Request
  (:init
   (&key
    ((:head __head) (instance std_msgs::Header :init))
    ((:reques_type __reques_type) 0)
    ((:run_speed __run_speed) 0.0)
    ((:stop_distance __stop_distance) 0.0)
    ((:aeb_distance __aeb_distance) 0.0)
    )
   (send-super :init)
   (setq _head __head)
   (setq _reques_type (round __reques_type))
   (setq _run_speed (float __run_speed))
   (setq _stop_distance (float __stop_distance))
   (setq _aeb_distance (float __aeb_distance))
   self)
  (:head
   (&rest __head)
   (if (keywordp (car __head))
       (send* _head __head)
     (progn
       (if __head (setq _head (car __head)))
       _head)))
  (:reques_type
   (&optional __reques_type)
   (if __reques_type (setq _reques_type __reques_type)) _reques_type)
  (:run_speed
   (&optional __run_speed)
   (if __run_speed (setq _run_speed __run_speed)) _run_speed)
  (:stop_distance
   (&optional __stop_distance)
   (if __stop_distance (setq _stop_distance __stop_distance)) _stop_distance)
  (:aeb_distance
   (&optional __aeb_distance)
   (if __aeb_distance (setq _aeb_distance __aeb_distance)) _aeb_distance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _head
    (send _head :serialization-length)
    ;; uint8 _reques_type
    1
    ;; float32 _run_speed
    4
    ;; float32 _stop_distance
    4
    ;; float32 _aeb_distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _head
       (send _head :serialize s)
     ;; uint8 _reques_type
       (write-byte _reques_type s)
     ;; float32 _run_speed
       (sys::poke _run_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _stop_distance
       (sys::poke _stop_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _aeb_distance
       (sys::poke _aeb_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _head
     (send _head :deserialize buf ptr-) (incf ptr- (send _head :serialization-length))
   ;; uint8 _reques_type
     (setq _reques_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _run_speed
     (setq _run_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _stop_distance
     (setq _stop_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _aeb_distance
     (setq _aeb_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_msgs::Request :md5sum-) "33db08dafe47ef9121746ecf8b323f75")
(setf (get custom_msgs::Request :datatype-) "custom_msgs/Request")
(setf (get custom_msgs::Request :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#----------------------------------------------------------------

std_msgs/Header head


uint8 FORWARD_ENABLE=0     #前进使能
uint8 BACK_ENABLE=1        #倒车使能
uint8 STOP_ENABLE=2        #停车使能
uint8 AEB_ENABLE=3         #紧急刹车使能

uint8    reques_type       #使能类型
float32  run_speed         #行车速度
float32  stop_distance     #前方停止距离
float32  aeb_distance      #前方AEB停止距离



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



(provide :custom_msgs/Request "33db08dafe47ef9121746ecf8b323f75")


