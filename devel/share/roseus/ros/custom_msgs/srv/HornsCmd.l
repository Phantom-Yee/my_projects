;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::HornsCmd)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'HornsCmd (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::HORNSCMD")
  (make-package "CUSTOM_MSGS::HORNSCMD"))
(unless (find-package "CUSTOM_MSGS::HORNSCMDREQUEST")
  (make-package "CUSTOM_MSGS::HORNSCMDREQUEST"))
(unless (find-package "CUSTOM_MSGS::HORNSCMDRESPONSE")
  (make-package "CUSTOM_MSGS::HORNSCMDRESPONSE"))

(in-package "ROS")





(intern "*TURNOFF*" (find-package "CUSTOM_MSGS::HORNSCMDREQUEST"))
(shadow '*TURNOFF* (find-package "CUSTOM_MSGS::HORNSCMDREQUEST"))
(defconstant custom_msgs::HornsCmdRequest::*TURNOFF* 0)
(intern "*TURNON*" (find-package "CUSTOM_MSGS::HORNSCMDREQUEST"))
(shadow '*TURNON* (find-package "CUSTOM_MSGS::HORNSCMDREQUEST"))
(defconstant custom_msgs::HornsCmdRequest::*TURNON* 1)

(defun custom_msgs::HornsCmdRequest-to-symbol (const)
  (cond
        ((= const 0) 'custom_msgs::HornsCmdRequest::*TurnOff*)
        ((= const 1) 'custom_msgs::HornsCmdRequest::*TurnOn*)
        (t nil)))

(defclass custom_msgs::HornsCmdRequest
  :super ros::object
  :slots (_HornsEnable ))

(defmethod custom_msgs::HornsCmdRequest
  (:init
   (&key
    ((:HornsEnable __HornsEnable) 0)
    )
   (send-super :init)
   (setq _HornsEnable (round __HornsEnable))
   self)
  (:HornsEnable
   (&optional __HornsEnable)
   (if __HornsEnable (setq _HornsEnable __HornsEnable)) _HornsEnable)
  (:serialization-length
   ()
   (+
    ;; uint8 _HornsEnable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _HornsEnable
       (write-byte _HornsEnable s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _HornsEnable
     (setq _HornsEnable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::HornsCmdResponse
  :super ros::object
  :slots (_res ))

(defmethod custom_msgs::HornsCmdResponse
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

(defclass custom_msgs::HornsCmd
  :super ros::object
  :slots ())

(setf (get custom_msgs::HornsCmd :md5sum-) "79223b1530c210472b338aa78cd18891")
(setf (get custom_msgs::HornsCmd :datatype-) "custom_msgs/HornsCmd")
(setf (get custom_msgs::HornsCmd :request) custom_msgs::HornsCmdRequest)
(setf (get custom_msgs::HornsCmd :response) custom_msgs::HornsCmdResponse)

(defmethod custom_msgs::HornsCmdRequest
  (:response () (instance custom_msgs::HornsCmdResponse :init)))

(setf (get custom_msgs::HornsCmdRequest :md5sum-) "79223b1530c210472b338aa78cd18891")
(setf (get custom_msgs::HornsCmdRequest :datatype-) "custom_msgs/HornsCmdRequest")
(setf (get custom_msgs::HornsCmdRequest :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#      BCM BCM_Horns 喇叭
#      0x0 :  Inactive； 0x1 :Active；
#----------------------------------------------------------------

#请求---------------------------------------------------------
##定义赋值枚举
uint8 TurnOff=0
uint8 TurnOn=1

##请求控制量
uint8 HornsEnable


---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段




")

(setf (get custom_msgs::HornsCmdResponse :md5sum-) "79223b1530c210472b338aa78cd18891")
(setf (get custom_msgs::HornsCmdResponse :datatype-) "custom_msgs/HornsCmdResponse")
(setf (get custom_msgs::HornsCmdResponse :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#      BCM BCM_Horns 喇叭
#      0x0 :  Inactive； 0x1 :Active；
#----------------------------------------------------------------

#请求---------------------------------------------------------
##定义赋值枚举
uint8 TurnOff=0
uint8 TurnOn=1

##请求控制量
uint8 HornsEnable


---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段




")



(provide :custom_msgs/HornsCmd "79223b1530c210472b338aa78cd18891")


