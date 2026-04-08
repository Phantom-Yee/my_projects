;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::AEBCmd)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'AEBCmd (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::AEBCMD")
  (make-package "CUSTOM_MSGS::AEBCMD"))

(in-package "ROS")
;;//! \htmlinclude AEBCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_msgs::AEBCmd
  :super ros::object
  :slots (_head _AEB_enable _ACC_DecToStop _AEB_bre_value ))

(defmethod custom_msgs::AEBCmd
  (:init
   (&key
    ((:head __head) (instance std_msgs::Header :init))
    ((:AEB_enable __AEB_enable) 0)
    ((:ACC_DecToStop __ACC_DecToStop) 0)
    ((:AEB_bre_value __AEB_bre_value) 0.0)
    )
   (send-super :init)
   (setq _head __head)
   (setq _AEB_enable (round __AEB_enable))
   (setq _ACC_DecToStop (round __ACC_DecToStop))
   (setq _AEB_bre_value (float __AEB_bre_value))
   self)
  (:head
   (&rest __head)
   (if (keywordp (car __head))
       (send* _head __head)
     (progn
       (if __head (setq _head (car __head)))
       _head)))
  (:AEB_enable
   (&optional __AEB_enable)
   (if __AEB_enable (setq _AEB_enable __AEB_enable)) _AEB_enable)
  (:ACC_DecToStop
   (&optional __ACC_DecToStop)
   (if __ACC_DecToStop (setq _ACC_DecToStop __ACC_DecToStop)) _ACC_DecToStop)
  (:AEB_bre_value
   (&optional __AEB_bre_value)
   (if __AEB_bre_value (setq _AEB_bre_value __AEB_bre_value)) _AEB_bre_value)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _head
    (send _head :serialization-length)
    ;; uint8 _AEB_enable
    1
    ;; uint8 _ACC_DecToStop
    1
    ;; float32 _AEB_bre_value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _head
       (send _head :serialize s)
     ;; uint8 _AEB_enable
       (write-byte _AEB_enable s)
     ;; uint8 _ACC_DecToStop
       (write-byte _ACC_DecToStop s)
     ;; float32 _AEB_bre_value
       (sys::poke _AEB_bre_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _head
     (send _head :deserialize buf ptr-) (incf ptr- (send _head :serialization-length))
   ;; uint8 _AEB_enable
     (setq _AEB_enable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ACC_DecToStop
     (setq _ACC_DecToStop (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _AEB_bre_value
     (setq _AEB_bre_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_msgs::AEBCmd :md5sum-) "4545b4dcbac8ee9bae5b6ac064ecbd8e")
(setf (get custom_msgs::AEBCmd :datatype-) "custom_msgs/AEBCmd")
(setf (get custom_msgs::AEBCmd :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#----------------------------------------------------------------

std_msgs/Header head

uint8   AEB_enable                 #AEB： 减速请求   0x0: no demand;0x1:
uint8   ACC_DecToStop              #ACC请求减速到停止 0x0: no demand; 0x1: demand
float32 AEB_bre_value              #AEB目标减速度  【-16,16】



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



(provide :custom_msgs/AEBCmd "4545b4dcbac8ee9bae5b6ac064ecbd8e")


