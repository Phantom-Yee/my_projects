;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::BrakeLightCmd)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'BrakeLightCmd (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::BRAKELIGHTCMD")
  (make-package "CUSTOM_MSGS::BRAKELIGHTCMD"))
(unless (find-package "CUSTOM_MSGS::BRAKELIGHTCMDREQUEST")
  (make-package "CUSTOM_MSGS::BRAKELIGHTCMDREQUEST"))
(unless (find-package "CUSTOM_MSGS::BRAKELIGHTCMDRESPONSE")
  (make-package "CUSTOM_MSGS::BRAKELIGHTCMDRESPONSE"))

(in-package "ROS")





(intern "*BRAKEOFF*" (find-package "CUSTOM_MSGS::BRAKELIGHTCMDREQUEST"))
(shadow '*BRAKEOFF* (find-package "CUSTOM_MSGS::BRAKELIGHTCMDREQUEST"))
(defconstant custom_msgs::BrakeLightCmdRequest::*BRAKEOFF* 0)
(intern "*BRAKEON*" (find-package "CUSTOM_MSGS::BRAKELIGHTCMDREQUEST"))
(shadow '*BRAKEON* (find-package "CUSTOM_MSGS::BRAKELIGHTCMDREQUEST"))
(defconstant custom_msgs::BrakeLightCmdRequest::*BRAKEON* 1)

(defun custom_msgs::BrakeLightCmdRequest-to-symbol (const)
  (cond
        ((= const 0) 'custom_msgs::BrakeLightCmdRequest::*BrakeOff*)
        ((= const 1) 'custom_msgs::BrakeLightCmdRequest::*BrakeOn*)
        (t nil)))

(defclass custom_msgs::BrakeLightCmdRequest
  :super ros::object
  :slots (_BrakeLightEnable ))

(defmethod custom_msgs::BrakeLightCmdRequest
  (:init
   (&key
    ((:BrakeLightEnable __BrakeLightEnable) 0)
    )
   (send-super :init)
   (setq _BrakeLightEnable (round __BrakeLightEnable))
   self)
  (:BrakeLightEnable
   (&optional __BrakeLightEnable)
   (if __BrakeLightEnable (setq _BrakeLightEnable __BrakeLightEnable)) _BrakeLightEnable)
  (:serialization-length
   ()
   (+
    ;; uint8 _BrakeLightEnable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _BrakeLightEnable
       (write-byte _BrakeLightEnable s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _BrakeLightEnable
     (setq _BrakeLightEnable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::BrakeLightCmdResponse
  :super ros::object
  :slots (_res ))

(defmethod custom_msgs::BrakeLightCmdResponse
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

(defclass custom_msgs::BrakeLightCmd
  :super ros::object
  :slots ())

(setf (get custom_msgs::BrakeLightCmd :md5sum-) "019a843542c6ec9330a3c43d4e701d28")
(setf (get custom_msgs::BrakeLightCmd :datatype-) "custom_msgs/BrakeLightCmd")
(setf (get custom_msgs::BrakeLightCmd :request) custom_msgs::BrakeLightCmdRequest)
(setf (get custom_msgs::BrakeLightCmd :response) custom_msgs::BrakeLightCmdResponse)

(defmethod custom_msgs::BrakeLightCmdRequest
  (:response () (instance custom_msgs::BrakeLightCmdResponse :init)))

(setf (get custom_msgs::BrakeLightCmdRequest :md5sum-) "019a843542c6ec9330a3c43d4e701d28")
(setf (get custom_msgs::BrakeLightCmdRequest :datatype-) "custom_msgs/BrakeLightCmdRequest")
(setf (get custom_msgs::BrakeLightCmdRequest :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#      BCM LCM_LowLight  近光灯命令   0x0:TurnOff 0x1：Turn On；
#                                   0x2：Upanddown;0x3:Stop
#          LCM_HeadLight 远光灯命令  0x0:Turn Off;0x1:Turn On
#----------------------------------------------------------------

#请求---------------------------------------------------------
##定义赋值枚举
uint8 BrakeOff=0
uint8 BrakeOn=1
#控制字段
uint8 BrakeLightEnable



---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段



")

(setf (get custom_msgs::BrakeLightCmdResponse :md5sum-) "019a843542c6ec9330a3c43d4e701d28")
(setf (get custom_msgs::BrakeLightCmdResponse :datatype-) "custom_msgs/BrakeLightCmdResponse")
(setf (get custom_msgs::BrakeLightCmdResponse :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#      BCM LCM_LowLight  近光灯命令   0x0:TurnOff 0x1：Turn On；
#                                   0x2：Upanddown;0x3:Stop
#          LCM_HeadLight 远光灯命令  0x0:Turn Off;0x1:Turn On
#----------------------------------------------------------------

#请求---------------------------------------------------------
##定义赋值枚举
uint8 BrakeOff=0
uint8 BrakeOn=1
#控制字段
uint8 BrakeLightEnable



---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段



")



(provide :custom_msgs/BrakeLightCmd "019a843542c6ec9330a3c43d4e701d28")


