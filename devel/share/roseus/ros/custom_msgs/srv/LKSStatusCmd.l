;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::LKSStatusCmd)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'LKSStatusCmd (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::LKSSTATUSCMD")
  (make-package "CUSTOM_MSGS::LKSSTATUSCMD"))
(unless (find-package "CUSTOM_MSGS::LKSSTATUSCMDREQUEST")
  (make-package "CUSTOM_MSGS::LKSSTATUSCMDREQUEST"))
(unless (find-package "CUSTOM_MSGS::LKSSTATUSCMDRESPONSE")
  (make-package "CUSTOM_MSGS::LKSSTATUSCMDRESPONSE"))

(in-package "ROS")





(intern "*ENABLE*" (find-package "CUSTOM_MSGS::LKSSTATUSCMDREQUEST"))
(shadow '*ENABLE* (find-package "CUSTOM_MSGS::LKSSTATUSCMDREQUEST"))
(defconstant custom_msgs::LKSStatusCmdRequest::*ENABLE* 0)
(intern "*DIABLE*" (find-package "CUSTOM_MSGS::LKSSTATUSCMDREQUEST"))
(shadow '*DIABLE* (find-package "CUSTOM_MSGS::LKSSTATUSCMDREQUEST"))
(defconstant custom_msgs::LKSStatusCmdRequest::*DIABLE* 1)

(defun custom_msgs::LKSStatusCmdRequest-to-symbol (const)
  (cond
        ((= const 0) 'custom_msgs::LKSStatusCmdRequest::*Enable*)
        ((= const 1) 'custom_msgs::LKSStatusCmdRequest::*Diable*)
        (t nil)))

(defclass custom_msgs::LKSStatusCmdRequest
  :super ros::object
  :slots (_LAS_LKSStatus ))

(defmethod custom_msgs::LKSStatusCmdRequest
  (:init
   (&key
    ((:LAS_LKSStatus __LAS_LKSStatus) 0)
    )
   (send-super :init)
   (setq _LAS_LKSStatus (round __LAS_LKSStatus))
   self)
  (:LAS_LKSStatus
   (&optional __LAS_LKSStatus)
   (if __LAS_LKSStatus (setq _LAS_LKSStatus __LAS_LKSStatus)) _LAS_LKSStatus)
  (:serialization-length
   ()
   (+
    ;; uint8 _LAS_LKSStatus
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _LAS_LKSStatus
       (write-byte _LAS_LKSStatus s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _LAS_LKSStatus
     (setq _LAS_LKSStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::LKSStatusCmdResponse
  :super ros::object
  :slots (_res ))

(defmethod custom_msgs::LKSStatusCmdResponse
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

(defclass custom_msgs::LKSStatusCmd
  :super ros::object
  :slots ())

(setf (get custom_msgs::LKSStatusCmd :md5sum-) "7bb5f6915f70508cfdaad8cf055e8ba8")
(setf (get custom_msgs::LKSStatusCmd :datatype-) "custom_msgs/LKSStatusCmd")
(setf (get custom_msgs::LKSStatusCmd :request) custom_msgs::LKSStatusCmdRequest)
(setf (get custom_msgs::LKSStatusCmd :response) custom_msgs::LKSStatusCmdResponse)

(defmethod custom_msgs::LKSStatusCmdRequest
  (:response () (instance custom_msgs::LKSStatusCmdResponse :init)))

(setf (get custom_msgs::LKSStatusCmdRequest :md5sum-) "7bb5f6915f70508cfdaad8cf055e8ba8")
(setf (get custom_msgs::LKSStatusCmdRequest :datatype-) "custom_msgs/LKSStatusCmdRequest")
(setf (get custom_msgs::LKSStatusCmdRequest :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#----------------------------------------------------------------

#请求---------------------------------------------------------
##定义赋值枚举
uint8 Enable=0
uint8 Diable=1
#
uint8 LAS_LKSStatus

---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段


")

(setf (get custom_msgs::LKSStatusCmdResponse :md5sum-) "7bb5f6915f70508cfdaad8cf055e8ba8")
(setf (get custom_msgs::LKSStatusCmdResponse :datatype-) "custom_msgs/LKSStatusCmdResponse")
(setf (get custom_msgs::LKSStatusCmdResponse :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#----------------------------------------------------------------

#请求---------------------------------------------------------
##定义赋值枚举
uint8 Enable=0
uint8 Diable=1
#
uint8 LAS_LKSStatus

---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段


")



(provide :custom_msgs/LKSStatusCmd "7bb5f6915f70508cfdaad8cf055e8ba8")


