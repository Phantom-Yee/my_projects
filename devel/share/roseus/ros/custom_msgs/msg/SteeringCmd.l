;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::SteeringCmd)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'SteeringCmd (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::STEERINGCMD")
  (make-package "CUSTOM_MSGS::STEERINGCMD"))

(in-package "ROS")
;;//! \htmlinclude SteeringCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_msgs::SteeringCmd
  :super ros::object
  :slots (_head _SteeringAngle ))

(defmethod custom_msgs::SteeringCmd
  (:init
   (&key
    ((:head __head) (instance std_msgs::Header :init))
    ((:SteeringAngle __SteeringAngle) 0.0)
    )
   (send-super :init)
   (setq _head __head)
   (setq _SteeringAngle (float __SteeringAngle))
   self)
  (:head
   (&rest __head)
   (if (keywordp (car __head))
       (send* _head __head)
     (progn
       (if __head (setq _head (car __head)))
       _head)))
  (:SteeringAngle
   (&optional __SteeringAngle)
   (if __SteeringAngle (setq _SteeringAngle __SteeringAngle)) _SteeringAngle)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _head
    (send _head :serialization-length)
    ;; float32 _SteeringAngle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _head
       (send _head :serialize s)
     ;; float32 _SteeringAngle
       (sys::poke _SteeringAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _head
     (send _head :deserialize buf ptr-) (incf ptr- (send _head :serialization-length))
   ;; float32 _SteeringAngle
     (setq _SteeringAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_msgs::SteeringCmd :md5sum-) "31999a5ef8b7f03fb56a72329494e3d5")
(setf (get custom_msgs::SteeringCmd :datatype-) "custom_msgs/SteeringCmd")
(setf (get custom_msgs::SteeringCmd :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#----------------------------------------------------------------

std_msgs/Header head

float32 SteeringAngle           #->>方向： 发送方向角度值

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



(provide :custom_msgs/SteeringCmd "31999a5ef8b7f03fb56a72329494e3d5")


