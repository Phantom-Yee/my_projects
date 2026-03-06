;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::SideLampsCmd)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'SideLampsCmd (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::SIDELAMPSCMD")
  (make-package "CUSTOM_MSGS::SIDELAMPSCMD"))
(unless (find-package "CUSTOM_MSGS::SIDELAMPSCMDREQUEST")
  (make-package "CUSTOM_MSGS::SIDELAMPSCMDREQUEST"))
(unless (find-package "CUSTOM_MSGS::SIDELAMPSCMDRESPONSE")
  (make-package "CUSTOM_MSGS::SIDELAMPSCMDRESPONSE"))

(in-package "ROS")





(intern "*TURNOFF*" (find-package "CUSTOM_MSGS::SIDELAMPSCMDREQUEST"))
(shadow '*TURNOFF* (find-package "CUSTOM_MSGS::SIDELAMPSCMDREQUEST"))
(defconstant custom_msgs::SideLampsCmdRequest::*TURNOFF* 0)
(intern "*TURNON*" (find-package "CUSTOM_MSGS::SIDELAMPSCMDREQUEST"))
(shadow '*TURNON* (find-package "CUSTOM_MSGS::SIDELAMPSCMDREQUEST"))
(defconstant custom_msgs::SideLampsCmdRequest::*TURNON* 1)

(defun custom_msgs::SideLampsCmdRequest-to-symbol (const)
  (cond
        ((= const 0) 'custom_msgs::SideLampsCmdRequest::*TurnOff*)
        ((= const 1) 'custom_msgs::SideLampsCmdRequest::*TurnOn*)
        (t nil)))

(defclass custom_msgs::SideLampsCmdRequest
  :super ros::object
  :slots (_SideLampsEnable ))

(defmethod custom_msgs::SideLampsCmdRequest
  (:init
   (&key
    ((:SideLampsEnable __SideLampsEnable) 0)
    )
   (send-super :init)
   (setq _SideLampsEnable (round __SideLampsEnable))
   self)
  (:SideLampsEnable
   (&optional __SideLampsEnable)
   (if __SideLampsEnable (setq _SideLampsEnable __SideLampsEnable)) _SideLampsEnable)
  (:serialization-length
   ()
   (+
    ;; uint8 _SideLampsEnable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _SideLampsEnable
       (write-byte _SideLampsEnable s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _SideLampsEnable
     (setq _SideLampsEnable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::SideLampsCmdResponse
  :super ros::object
  :slots (_res ))

(defmethod custom_msgs::SideLampsCmdResponse
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

(defclass custom_msgs::SideLampsCmd
  :super ros::object
  :slots ())

(setf (get custom_msgs::SideLampsCmd :md5sum-) "0d308c1c8608ef82d9ba9d867f3edac3")
(setf (get custom_msgs::SideLampsCmd :datatype-) "custom_msgs/SideLampsCmd")
(setf (get custom_msgs::SideLampsCmd :request) custom_msgs::SideLampsCmdRequest)
(setf (get custom_msgs::SideLampsCmd :response) custom_msgs::SideLampsCmdResponse)

(defmethod custom_msgs::SideLampsCmdRequest
  (:response () (instance custom_msgs::SideLampsCmdResponse :init)))

(setf (get custom_msgs::SideLampsCmdRequest :md5sum-) "0d308c1c8608ef82d9ba9d867f3edac3")
(setf (get custom_msgs::SideLampsCmdRequest :datatype-) "custom_msgs/SideLampsCmdRequest")
(setf (get custom_msgs::SideLampsCmdRequest :definition-)
      "#----------------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#      LCM_SideLamps 示廓灯命令  0x0:Turn Off;0x1:Turn On
#----------------------------------------------------------------------

#请求---------------------------------------------------------
##定义赋值枚举
uint8 TurnOff=0
uint8 TurnOn=1
#
uint8 SideLampsEnable        #喇叭:0x0:Turn Off;0x1:Turn On



---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段


")

(setf (get custom_msgs::SideLampsCmdResponse :md5sum-) "0d308c1c8608ef82d9ba9d867f3edac3")
(setf (get custom_msgs::SideLampsCmdResponse :datatype-) "custom_msgs/SideLampsCmdResponse")
(setf (get custom_msgs::SideLampsCmdResponse :definition-)
      "#----------------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#      LCM_SideLamps 示廓灯命令  0x0:Turn Off;0x1:Turn On
#----------------------------------------------------------------------

#请求---------------------------------------------------------
##定义赋值枚举
uint8 TurnOff=0
uint8 TurnOn=1
#
uint8 SideLampsEnable        #喇叭:0x0:Turn Off;0x1:Turn On



---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段


")



(provide :custom_msgs/SideLampsCmd "0d308c1c8608ef82d9ba9d867f3edac3")


