;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::EPBCmd)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'EPBCmd (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::EPBCMD")
  (make-package "CUSTOM_MSGS::EPBCMD"))
(unless (find-package "CUSTOM_MSGS::EPBCMDREQUEST")
  (make-package "CUSTOM_MSGS::EPBCMDREQUEST"))
(unless (find-package "CUSTOM_MSGS::EPBCMDRESPONSE")
  (make-package "CUSTOM_MSGS::EPBCMDRESPONSE"))

(in-package "ROS")





(intern "*ENABLE*" (find-package "CUSTOM_MSGS::EPBCMDREQUEST"))
(shadow '*ENABLE* (find-package "CUSTOM_MSGS::EPBCMDREQUEST"))
(defconstant custom_msgs::EPBCmdRequest::*ENABLE* 0)
(intern "*DIABLE*" (find-package "CUSTOM_MSGS::EPBCMDREQUEST"))
(shadow '*DIABLE* (find-package "CUSTOM_MSGS::EPBCMDREQUEST"))
(defconstant custom_msgs::EPBCmdRequest::*DIABLE* 1)

(defun custom_msgs::EPBCmdRequest-to-symbol (const)
  (cond
        ((= const 0) 'custom_msgs::EPBCmdRequest::*Enable*)
        ((= const 1) 'custom_msgs::EPBCmdRequest::*Diable*)
        (t nil)))

(defclass custom_msgs::EPBCmdRequest
  :super ros::object
  :slots (_APA_EPBrequestValid _APA_EPBrequest ))

(defmethod custom_msgs::EPBCmdRequest
  (:init
   (&key
    ((:APA_EPBrequestValid __APA_EPBrequestValid) 0)
    ((:APA_EPBrequest __APA_EPBrequest) 0)
    )
   (send-super :init)
   (setq _APA_EPBrequestValid (round __APA_EPBrequestValid))
   (setq _APA_EPBrequest (round __APA_EPBrequest))
   self)
  (:APA_EPBrequestValid
   (&optional __APA_EPBrequestValid)
   (if __APA_EPBrequestValid (setq _APA_EPBrequestValid __APA_EPBrequestValid)) _APA_EPBrequestValid)
  (:APA_EPBrequest
   (&optional __APA_EPBrequest)
   (if __APA_EPBrequest (setq _APA_EPBrequest __APA_EPBrequest)) _APA_EPBrequest)
  (:serialization-length
   ()
   (+
    ;; uint8 _APA_EPBrequestValid
    1
    ;; uint8 _APA_EPBrequest
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _APA_EPBrequestValid
       (write-byte _APA_EPBrequestValid s)
     ;; uint8 _APA_EPBrequest
       (write-byte _APA_EPBrequest s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _APA_EPBrequestValid
     (setq _APA_EPBrequestValid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _APA_EPBrequest
     (setq _APA_EPBrequest (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::EPBCmdResponse
  :super ros::object
  :slots (_res ))

(defmethod custom_msgs::EPBCmdResponse
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

(defclass custom_msgs::EPBCmd
  :super ros::object
  :slots ())

(setf (get custom_msgs::EPBCmd :md5sum-) "97ad02b260ada95bd0bdc9b9b400a370")
(setf (get custom_msgs::EPBCmd :datatype-) "custom_msgs/EPBCmd")
(setf (get custom_msgs::EPBCmd :request) custom_msgs::EPBCmdRequest)
(setf (get custom_msgs::EPBCmd :response) custom_msgs::EPBCmdResponse)

(defmethod custom_msgs::EPBCmdRequest
  (:response () (instance custom_msgs::EPBCmdResponse :init)))

(setf (get custom_msgs::EPBCmdRequest :md5sum-) "97ad02b260ada95bd0bdc9b9b400a370")
(setf (get custom_msgs::EPBCmdRequest :datatype-) "custom_msgs/EPBCmdRequest")
(setf (get custom_msgs::EPBCmdRequest :definition-)
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
uint8 APA_EPBrequestValid
uint8 APA_EPBrequest

---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段


")

(setf (get custom_msgs::EPBCmdResponse :md5sum-) "97ad02b260ada95bd0bdc9b9b400a370")
(setf (get custom_msgs::EPBCmdResponse :datatype-) "custom_msgs/EPBCmdResponse")
(setf (get custom_msgs::EPBCmdResponse :definition-)
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
uint8 APA_EPBrequestValid
uint8 APA_EPBrequest

---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段


")



(provide :custom_msgs/EPBCmd "97ad02b260ada95bd0bdc9b9b400a370")


