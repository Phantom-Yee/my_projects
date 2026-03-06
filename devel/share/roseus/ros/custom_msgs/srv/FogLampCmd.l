;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::FogLampCmd)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'FogLampCmd (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::FOGLAMPCMD")
  (make-package "CUSTOM_MSGS::FOGLAMPCMD"))
(unless (find-package "CUSTOM_MSGS::FOGLAMPCMDREQUEST")
  (make-package "CUSTOM_MSGS::FOGLAMPCMDREQUEST"))
(unless (find-package "CUSTOM_MSGS::FOGLAMPCMDRESPONSE")
  (make-package "CUSTOM_MSGS::FOGLAMPCMDRESPONSE"))

(in-package "ROS")





(intern "*TURNOFF*" (find-package "CUSTOM_MSGS::FOGLAMPCMDREQUEST"))
(shadow '*TURNOFF* (find-package "CUSTOM_MSGS::FOGLAMPCMDREQUEST"))
(defconstant custom_msgs::FogLampCmdRequest::*TURNOFF* 0)
(intern "*TURNON*" (find-package "CUSTOM_MSGS::FOGLAMPCMDREQUEST"))
(shadow '*TURNON* (find-package "CUSTOM_MSGS::FOGLAMPCMDREQUEST"))
(defconstant custom_msgs::FogLampCmdRequest::*TURNON* 1)

(defun custom_msgs::FogLampCmdRequest-to-symbol (const)
  (cond
        ((= const 0) 'custom_msgs::FogLampCmdRequest::*TurnOff*)
        ((= const 1) 'custom_msgs::FogLampCmdRequest::*TurnOn*)
        (t nil)))

(defclass custom_msgs::FogLampCmdRequest
  :super ros::object
  :slots (_FrontFogLamp _RearFogLamps ))

(defmethod custom_msgs::FogLampCmdRequest
  (:init
   (&key
    ((:FrontFogLamp __FrontFogLamp) 0)
    ((:RearFogLamps __RearFogLamps) 0)
    )
   (send-super :init)
   (setq _FrontFogLamp (round __FrontFogLamp))
   (setq _RearFogLamps (round __RearFogLamps))
   self)
  (:FrontFogLamp
   (&optional __FrontFogLamp)
   (if __FrontFogLamp (setq _FrontFogLamp __FrontFogLamp)) _FrontFogLamp)
  (:RearFogLamps
   (&optional __RearFogLamps)
   (if __RearFogLamps (setq _RearFogLamps __RearFogLamps)) _RearFogLamps)
  (:serialization-length
   ()
   (+
    ;; uint8 _FrontFogLamp
    1
    ;; uint8 _RearFogLamps
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _FrontFogLamp
       (write-byte _FrontFogLamp s)
     ;; uint8 _RearFogLamps
       (write-byte _RearFogLamps s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _FrontFogLamp
     (setq _FrontFogLamp (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RearFogLamps
     (setq _RearFogLamps (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::FogLampCmdResponse
  :super ros::object
  :slots (_res ))

(defmethod custom_msgs::FogLampCmdResponse
  (:init
   (&key
    ((:res __res) nil)
    )
   (send-super :init)
   (setq _res __res)
   self)
  (:res
   (&optional (__res :null))
   (if (not (eq __res :null)) (setq _res __res)) _res)
  (:serialization-length
   ()
   (+
    ;; bool _res
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _res
       (if _res (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _res
     (setq _res (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::FogLampCmd
  :super ros::object
  :slots ())

(setf (get custom_msgs::FogLampCmd :md5sum-) "fbd437971ce67472818057cd942311e3")
(setf (get custom_msgs::FogLampCmd :datatype-) "custom_msgs/FogLampCmd")
(setf (get custom_msgs::FogLampCmd :request) custom_msgs::FogLampCmdRequest)
(setf (get custom_msgs::FogLampCmd :response) custom_msgs::FogLampCmdResponse)

(defmethod custom_msgs::FogLampCmdRequest
  (:response () (instance custom_msgs::FogLampCmdResponse :init)))

(setf (get custom_msgs::FogLampCmdRequest :md5sum-) "fbd437971ce67472818057cd942311e3")
(setf (get custom_msgs::FogLampCmdRequest :datatype-) "custom_msgs/FogLampCmdRequest")
(setf (get custom_msgs::FogLampCmdRequest :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#      BCM LCM_FrontFogLamps  前雾灯命令 0x0:Turn Off;0x1:Turn On
#          LCM_RearFogLamps   后雾灯命令 0x0:Turn Off;0x1:Turn On
#----------------------------------------------------------------

#请求---------------------------------------------------------
##定义赋值枚举
uint8 TurnOff=0
uint8 TurnOn=1
#
uint8 FrontFogLamp
uint8 RearFogLamps 


---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段



")

(setf (get custom_msgs::FogLampCmdResponse :md5sum-) "fbd437971ce67472818057cd942311e3")
(setf (get custom_msgs::FogLampCmdResponse :datatype-) "custom_msgs/FogLampCmdResponse")
(setf (get custom_msgs::FogLampCmdResponse :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#      BCM LCM_FrontFogLamps  前雾灯命令 0x0:Turn Off;0x1:Turn On
#          LCM_RearFogLamps   后雾灯命令 0x0:Turn Off;0x1:Turn On
#----------------------------------------------------------------

#请求---------------------------------------------------------
##定义赋值枚举
uint8 TurnOff=0
uint8 TurnOn=1
#
uint8 FrontFogLamp
uint8 RearFogLamps 


---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段



")



(provide :custom_msgs/FogLampCmd "fbd437971ce67472818057cd942311e3")


