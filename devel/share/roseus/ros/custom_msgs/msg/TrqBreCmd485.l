;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::TrqBreCmd485)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'TrqBreCmd485 (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::TRQBRECMD485")
  (make-package "CUSTOM_MSGS::TRQBRECMD485"))

(in-package "ROS")
;;//! \htmlinclude TrqBreCmd485.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_msgs::TrqBreCmd485
  :super ros::object
  :slots (_head _cmd_type _pay_load ))

(defmethod custom_msgs::TrqBreCmd485
  (:init
   (&key
    ((:head __head) (instance std_msgs::Header :init))
    ((:cmd_type __cmd_type) 0)
    ((:pay_load __pay_load) 0)
    )
   (send-super :init)
   (setq _head __head)
   (setq _cmd_type (round __cmd_type))
   (setq _pay_load (round __pay_load))
   self)
  (:head
   (&rest __head)
   (if (keywordp (car __head))
       (send* _head __head)
     (progn
       (if __head (setq _head (car __head)))
       _head)))
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:pay_load
   (&optional __pay_load)
   (if __pay_load (setq _pay_load __pay_load)) _pay_load)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _head
    (send _head :serialization-length)
    ;; uint8 _cmd_type
    1
    ;; uint8 _pay_load
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _head
       (send _head :serialize s)
     ;; uint8 _cmd_type
       (write-byte _cmd_type s)
     ;; uint8 _pay_load
       (write-byte _pay_load s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _head
     (send _head :deserialize buf ptr-) (incf ptr- (send _head :serialization-length))
   ;; uint8 _cmd_type
     (setq _cmd_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _pay_load
     (setq _pay_load (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get custom_msgs::TrqBreCmd485 :md5sum-) "be77f276997429f5059b00917c72a649")
(setf (get custom_msgs::TrqBreCmd485 :datatype-) "custom_msgs/TrqBreCmd485")
(setf (get custom_msgs::TrqBreCmd485 :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#----------------------------------------------------------------

std_msgs/Header head

uint8   cmd_type                  #ming ling zi
uint8   pay_load                  #->>zai he: ming ling zi dui ying       




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



(provide :custom_msgs/TrqBreCmd485 "be77f276997429f5059b00917c72a649")


