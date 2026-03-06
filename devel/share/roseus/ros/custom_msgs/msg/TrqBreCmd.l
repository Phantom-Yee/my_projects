;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::TrqBreCmd)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'TrqBreCmd (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::TRQBRECMD")
  (make-package "CUSTOM_MSGS::TRQBRECMD"))

(in-package "ROS")
;;//! \htmlinclude TrqBreCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_msgs::TrqBreCmd
  :super ros::object
  :slots (_head _trq_enable _trq_value_2 _trq_value_3 _bre_enable _bre_value _ACC_DecToStop _ACC_Driveoff ))

(defmethod custom_msgs::TrqBreCmd
  (:init
   (&key
    ((:head __head) (instance std_msgs::Header :init))
    ((:trq_enable __trq_enable) 0)
    ((:trq_value_2 __trq_value_2) 0)
    ((:trq_value_3 __trq_value_3) 0.0)
    ((:bre_enable __bre_enable) 0)
    ((:bre_value __bre_value) 0.0)
    ((:ACC_DecToStop __ACC_DecToStop) 0)
    ((:ACC_Driveoff __ACC_Driveoff) 0)
    )
   (send-super :init)
   (setq _head __head)
   (setq _trq_enable (round __trq_enable))
   (setq _trq_value_2 (round __trq_value_2))
   (setq _trq_value_3 (float __trq_value_3))
   (setq _bre_enable (round __bre_enable))
   (setq _bre_value (float __bre_value))
   (setq _ACC_DecToStop (round __ACC_DecToStop))
   (setq _ACC_Driveoff (round __ACC_Driveoff))
   self)
  (:head
   (&rest __head)
   (if (keywordp (car __head))
       (send* _head __head)
     (progn
       (if __head (setq _head (car __head)))
       _head)))
  (:trq_enable
   (&optional __trq_enable)
   (if __trq_enable (setq _trq_enable __trq_enable)) _trq_enable)
  (:trq_value_2
   (&optional __trq_value_2)
   (if __trq_value_2 (setq _trq_value_2 __trq_value_2)) _trq_value_2)
  (:trq_value_3
   (&optional __trq_value_3)
   (if __trq_value_3 (setq _trq_value_3 __trq_value_3)) _trq_value_3)
  (:bre_enable
   (&optional __bre_enable)
   (if __bre_enable (setq _bre_enable __bre_enable)) _bre_enable)
  (:bre_value
   (&optional __bre_value)
   (if __bre_value (setq _bre_value __bre_value)) _bre_value)
  (:ACC_DecToStop
   (&optional __ACC_DecToStop)
   (if __ACC_DecToStop (setq _ACC_DecToStop __ACC_DecToStop)) _ACC_DecToStop)
  (:ACC_Driveoff
   (&optional __ACC_Driveoff)
   (if __ACC_Driveoff (setq _ACC_Driveoff __ACC_Driveoff)) _ACC_Driveoff)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _head
    (send _head :serialization-length)
    ;; uint8 _trq_enable
    1
    ;; uint32 _trq_value_2
    4
    ;; float32 _trq_value_3
    4
    ;; uint8 _bre_enable
    1
    ;; float32 _bre_value
    4
    ;; uint8 _ACC_DecToStop
    1
    ;; uint8 _ACC_Driveoff
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _head
       (send _head :serialize s)
     ;; uint8 _trq_enable
       (write-byte _trq_enable s)
     ;; uint32 _trq_value_2
       (write-long _trq_value_2 s)
     ;; float32 _trq_value_3
       (sys::poke _trq_value_3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _bre_enable
       (write-byte _bre_enable s)
     ;; float32 _bre_value
       (sys::poke _bre_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _ACC_DecToStop
       (write-byte _ACC_DecToStop s)
     ;; uint8 _ACC_Driveoff
       (write-byte _ACC_Driveoff s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _head
     (send _head :deserialize buf ptr-) (incf ptr- (send _head :serialization-length))
   ;; uint8 _trq_enable
     (setq _trq_enable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _trq_value_2
     (setq _trq_value_2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _trq_value_3
     (setq _trq_value_3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _bre_enable
     (setq _bre_enable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _bre_value
     (setq _bre_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _ACC_DecToStop
     (setq _ACC_DecToStop (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ACC_Driveoff
     (setq _ACC_Driveoff (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get custom_msgs::TrqBreCmd :md5sum-) "f4c067bce3a4adbe38f794b306a03fb3")
(setf (get custom_msgs::TrqBreCmd :datatype-) "custom_msgs/TrqBreCmd")
(setf (get custom_msgs::TrqBreCmd :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#----------------------------------------------------------------

std_msgs/Header head

#float32 DeAccReq      
#float32 AccReq
#float32 SptReq

uint8   trq_enable                    #发动机驱动扭矩是否使能
uint32  trq_value_2                   #->>扭矩:所需扭矩值     #2号车使用
float32 trq_value_3                   #->>扭矩:所需扭矩百分比  #3号车使用
uint8   bre_enable                    #刹车是否使能
float32 bre_value                     #刹车值
uint8   ACC_DecToStop                 #ACC请求减速到停止 0x0: no demand; 0x1: demand 车子按自己的减速度平滑停车 不受发送的其他指令控制
uint8   ACC_Driveoff                  #释放汽缸压力，必须与ACC_DecToStop配合使

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



(provide :custom_msgs/TrqBreCmd "f4c067bce3a4adbe38f794b306a03fb3")


