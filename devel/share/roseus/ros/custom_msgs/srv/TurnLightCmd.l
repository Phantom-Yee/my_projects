;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::TurnLightCmd)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'TurnLightCmd (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::TURNLIGHTCMD")
  (make-package "CUSTOM_MSGS::TURNLIGHTCMD"))
(unless (find-package "CUSTOM_MSGS::TURNLIGHTCMDREQUEST")
  (make-package "CUSTOM_MSGS::TURNLIGHTCMDREQUEST"))
(unless (find-package "CUSTOM_MSGS::TURNLIGHTCMDRESPONSE")
  (make-package "CUSTOM_MSGS::TURNLIGHTCMDRESPONSE"))

(in-package "ROS")





(intern "*TURNOFF*" (find-package "CUSTOM_MSGS::TURNLIGHTCMDREQUEST"))
(shadow '*TURNOFF* (find-package "CUSTOM_MSGS::TURNLIGHTCMDREQUEST"))
(defconstant custom_msgs::TurnLightCmdRequest::*TURNOFF* 0)
(intern "*TURNLEFT*" (find-package "CUSTOM_MSGS::TURNLIGHTCMDREQUEST"))
(shadow '*TURNLEFT* (find-package "CUSTOM_MSGS::TURNLIGHTCMDREQUEST"))
(defconstant custom_msgs::TurnLightCmdRequest::*TURNLEFT* 1)
(intern "*TURNRIGHT*" (find-package "CUSTOM_MSGS::TURNLIGHTCMDREQUEST"))
(shadow '*TURNRIGHT* (find-package "CUSTOM_MSGS::TURNLIGHTCMDREQUEST"))
(defconstant custom_msgs::TurnLightCmdRequest::*TURNRIGHT* 2)

(defun custom_msgs::TurnLightCmdRequest-to-symbol (const)
  (cond
        ((= const 0) 'custom_msgs::TurnLightCmdRequest::*TurnOff*)
        ((= const 1) 'custom_msgs::TurnLightCmdRequest::*TurnLeft*)
        ((= const 2) 'custom_msgs::TurnLightCmdRequest::*TurnRight*)
        (t nil)))

(defclass custom_msgs::TurnLightCmdRequest
  :super ros::object
  :slots (_TurnLightEnable ))

(defmethod custom_msgs::TurnLightCmdRequest
  (:init
   (&key
    ((:TurnLightEnable __TurnLightEnable) 0)
    )
   (send-super :init)
   (setq _TurnLightEnable (round __TurnLightEnable))
   self)
  (:TurnLightEnable
   (&optional __TurnLightEnable)
   (if __TurnLightEnable (setq _TurnLightEnable __TurnLightEnable)) _TurnLightEnable)
  (:serialization-length
   ()
   (+
    ;; uint8 _TurnLightEnable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _TurnLightEnable
       (write-byte _TurnLightEnable s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _TurnLightEnable
     (setq _TurnLightEnable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::TurnLightCmdResponse
  :super ros::object
  :slots (_res ))

(defmethod custom_msgs::TurnLightCmdResponse
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

(defclass custom_msgs::TurnLightCmd
  :super ros::object
  :slots ())

(setf (get custom_msgs::TurnLightCmd :md5sum-) "322d87667a5cf45a7b0e59fea7572bbf")
(setf (get custom_msgs::TurnLightCmd :datatype-) "custom_msgs/TurnLightCmd")
(setf (get custom_msgs::TurnLightCmd :request) custom_msgs::TurnLightCmdRequest)
(setf (get custom_msgs::TurnLightCmd :response) custom_msgs::TurnLightCmdResponse)

(defmethod custom_msgs::TurnLightCmdRequest
  (:response () (instance custom_msgs::TurnLightCmdResponse :init)))

(setf (get custom_msgs::TurnLightCmdRequest :md5sum-) "322d87667a5cf45a7b0e59fea7572bbf")
(setf (get custom_msgs::TurnLightCmdRequest :datatype-) "custom_msgs/TurnLightCmdRequest")
(setf (get custom_msgs::TurnLightCmdRequest :definition-)
      "#----------------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#      LCM_TurnLight 转向灯命令  0x0:Not Active:0x1：
#                              TurnRight；0x2：TurnLeft;0x3:DoubleLight
#----------------------------------------------------------------------

#请求---------------------------------------------------------
##定义赋值枚举
uint8 TurnOff=0
uint8 TurnLeft=1
uint8 TurnRight=2

#
uint8 TurnLightEnable

---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段


")

(setf (get custom_msgs::TurnLightCmdResponse :md5sum-) "322d87667a5cf45a7b0e59fea7572bbf")
(setf (get custom_msgs::TurnLightCmdResponse :datatype-) "custom_msgs/TurnLightCmdResponse")
(setf (get custom_msgs::TurnLightCmdResponse :definition-)
      "#----------------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#      LCM_TurnLight 转向灯命令  0x0:Not Active:0x1：
#                              TurnRight；0x2：TurnLeft;0x3:DoubleLight
#----------------------------------------------------------------------

#请求---------------------------------------------------------
##定义赋值枚举
uint8 TurnOff=0
uint8 TurnLeft=1
uint8 TurnRight=2

#
uint8 TurnLightEnable

---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段


")



(provide :custom_msgs/TurnLightCmd "322d87667a5cf45a7b0e59fea7572bbf")


