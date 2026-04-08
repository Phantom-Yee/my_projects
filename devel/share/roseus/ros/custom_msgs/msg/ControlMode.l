;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::ControlMode)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'ControlMode (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::CONTROLMODE")
  (make-package "CUSTOM_MSGS::CONTROLMODE"))

(in-package "ROS")
;;//! \htmlinclude ControlMode.msg.html


(defclass custom_msgs::ControlMode
  :super ros::object
  :slots (_start _mode_type _brake_enable _brake_value _speed_require _angle_require ))

(defmethod custom_msgs::ControlMode
  (:init
   (&key
    ((:start __start) 0)
    ((:mode_type __mode_type) 0)
    ((:brake_enable __brake_enable) 0)
    ((:brake_value __brake_value) 0)
    ((:speed_require __speed_require) 0.0)
    ((:angle_require __angle_require) 0.0)
    )
   (send-super :init)
   (setq _start (round __start))
   (setq _mode_type (round __mode_type))
   (setq _brake_enable (round __brake_enable))
   (setq _brake_value (round __brake_value))
   (setq _speed_require (float __speed_require))
   (setq _angle_require (float __angle_require))
   self)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:mode_type
   (&optional __mode_type)
   (if __mode_type (setq _mode_type __mode_type)) _mode_type)
  (:brake_enable
   (&optional __brake_enable)
   (if __brake_enable (setq _brake_enable __brake_enable)) _brake_enable)
  (:brake_value
   (&optional __brake_value)
   (if __brake_value (setq _brake_value __brake_value)) _brake_value)
  (:speed_require
   (&optional __speed_require)
   (if __speed_require (setq _speed_require __speed_require)) _speed_require)
  (:angle_require
   (&optional __angle_require)
   (if __angle_require (setq _angle_require __angle_require)) _angle_require)
  (:serialization-length
   ()
   (+
    ;; uint8 _start
    1
    ;; uint8 _mode_type
    1
    ;; uint8 _brake_enable
    1
    ;; uint8 _brake_value
    1
    ;; float32 _speed_require
    4
    ;; float32 _angle_require
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _start
       (write-byte _start s)
     ;; uint8 _mode_type
       (write-byte _mode_type s)
     ;; uint8 _brake_enable
       (write-byte _brake_enable s)
     ;; uint8 _brake_value
       (write-byte _brake_value s)
     ;; float32 _speed_require
       (sys::poke _speed_require (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_require
       (sys::poke _angle_require (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _start
     (setq _start (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mode_type
     (setq _mode_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _brake_enable
     (setq _brake_enable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _brake_value
     (setq _brake_value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _speed_require
     (setq _speed_require (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_require
     (setq _angle_require (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_msgs::ControlMode :md5sum-) "2c547e8f4a6c7926cc11dc380930bfb6")
(setf (get custom_msgs::ControlMode :datatype-) "custom_msgs/ControlMode")
(setf (get custom_msgs::ControlMode :definition-)
      "uint8      start                     #qidong
uint8      mode_type                 #模式类型  00：无， 自动模式：（11：自动生成地图，12：已有地图） 遥控模式：20
uint8      brake_enable              #制动使能  0：制动，1：可行驶
uint8      brake_value               #制动值  
float32    speed_require             #速度要求
float32    angle_require             #角度要求
")



(provide :custom_msgs/ControlMode "2c547e8f4a6c7926cc11dc380930bfb6")


