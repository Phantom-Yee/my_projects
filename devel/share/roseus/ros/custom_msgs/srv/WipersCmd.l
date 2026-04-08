;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::WipersCmd)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'WipersCmd (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::WIPERSCMD")
  (make-package "CUSTOM_MSGS::WIPERSCMD"))
(unless (find-package "CUSTOM_MSGS::WIPERSCMDREQUEST")
  (make-package "CUSTOM_MSGS::WIPERSCMDREQUEST"))
(unless (find-package "CUSTOM_MSGS::WIPERSCMDRESPONSE")
  (make-package "CUSTOM_MSGS::WIPERSCMDRESPONSE"))

(in-package "ROS")





(intern "*TURNOFF*" (find-package "CUSTOM_MSGS::WIPERSCMDREQUEST"))
(shadow '*TURNOFF* (find-package "CUSTOM_MSGS::WIPERSCMDREQUEST"))
(defconstant custom_msgs::WipersCmdRequest::*TURNOFF* 0)
(intern "*LOWSPEED*" (find-package "CUSTOM_MSGS::WIPERSCMDREQUEST"))
(shadow '*LOWSPEED* (find-package "CUSTOM_MSGS::WIPERSCMDREQUEST"))
(defconstant custom_msgs::WipersCmdRequest::*LOWSPEED* 6)
(intern "*HIGHSPEED*" (find-package "CUSTOM_MSGS::WIPERSCMDREQUEST"))
(shadow '*HIGHSPEED* (find-package "CUSTOM_MSGS::WIPERSCMDREQUEST"))
(defconstant custom_msgs::WipersCmdRequest::*HIGHSPEED* 7)

(defun custom_msgs::WipersCmdRequest-to-symbol (const)
  (cond
        ((= const 0) 'custom_msgs::WipersCmdRequest::*TurnOff*)
        ((= const 6) 'custom_msgs::WipersCmdRequest::*LowSpeed*)
        ((= const 7) 'custom_msgs::WipersCmdRequest::*HighSpeed*)
        (t nil)))

(defclass custom_msgs::WipersCmdRequest
  :super ros::object
  :slots (_WipersEnable ))

(defmethod custom_msgs::WipersCmdRequest
  (:init
   (&key
    ((:WipersEnable __WipersEnable) 0)
    )
   (send-super :init)
   (setq _WipersEnable (round __WipersEnable))
   self)
  (:WipersEnable
   (&optional __WipersEnable)
   (if __WipersEnable (setq _WipersEnable __WipersEnable)) _WipersEnable)
  (:serialization-length
   ()
   (+
    ;; uint8 _WipersEnable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _WipersEnable
       (write-byte _WipersEnable s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _WipersEnable
     (setq _WipersEnable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::WipersCmdResponse
  :super ros::object
  :slots (_res ))

(defmethod custom_msgs::WipersCmdResponse
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

(defclass custom_msgs::WipersCmd
  :super ros::object
  :slots ())

(setf (get custom_msgs::WipersCmd :md5sum-) "fcb46d2085dd0f54813d4da9f776b2e3")
(setf (get custom_msgs::WipersCmd :datatype-) "custom_msgs/WipersCmd")
(setf (get custom_msgs::WipersCmd :request) custom_msgs::WipersCmdRequest)
(setf (get custom_msgs::WipersCmd :response) custom_msgs::WipersCmdResponse)

(defmethod custom_msgs::WipersCmdRequest
  (:response () (instance custom_msgs::WipersCmdResponse :init)))

(setf (get custom_msgs::WipersCmdRequest :md5sum-) "fcb46d2085dd0f54813d4da9f776b2e3")
(setf (get custom_msgs::WipersCmdRequest :datatype-) "custom_msgs/WipersCmdRequest")
(setf (get custom_msgs::WipersCmdRequest :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#      BCM BCM_Wipers 雨刮控制
#         0：停
#         6：低速刮刷
#         7：高速刮刷
#----------------------------------------------------------------

#请求---------------------------------------------------------
##定义赋值枚举
uint8 TurnOff=0
uint8 LowSpeed=6
uint8 HighSpeed=7
#
uint8 WipersEnable   

---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段



")

(setf (get custom_msgs::WipersCmdResponse :md5sum-) "fcb46d2085dd0f54813d4da9f776b2e3")
(setf (get custom_msgs::WipersCmdResponse :datatype-) "custom_msgs/WipersCmdResponse")
(setf (get custom_msgs::WipersCmdResponse :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#      BCM BCM_Wipers 雨刮控制
#         0：停
#         6：低速刮刷
#         7：高速刮刷
#----------------------------------------------------------------

#请求---------------------------------------------------------
##定义赋值枚举
uint8 TurnOff=0
uint8 LowSpeed=6
uint8 HighSpeed=7
#
uint8 WipersEnable   

---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段



")



(provide :custom_msgs/WipersCmd "fcb46d2085dd0f54813d4da9f776b2e3")


