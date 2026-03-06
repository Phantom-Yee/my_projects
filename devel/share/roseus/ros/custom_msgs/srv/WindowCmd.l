;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::WindowCmd)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'WindowCmd (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::WINDOWCMD")
  (make-package "CUSTOM_MSGS::WINDOWCMD"))
(unless (find-package "CUSTOM_MSGS::WINDOWCMDREQUEST")
  (make-package "CUSTOM_MSGS::WINDOWCMDREQUEST"))
(unless (find-package "CUSTOM_MSGS::WINDOWCMDRESPONSE")
  (make-package "CUSTOM_MSGS::WINDOWCMDRESPONSE"))

(in-package "ROS")





(intern "*TURNOFF*" (find-package "CUSTOM_MSGS::WINDOWCMDREQUEST"))
(shadow '*TURNOFF* (find-package "CUSTOM_MSGS::WINDOWCMDREQUEST"))
(defconstant custom_msgs::WindowCmdRequest::*TURNOFF* 0)
(intern "*CLOSE*" (find-package "CUSTOM_MSGS::WINDOWCMDREQUEST"))
(shadow '*CLOSE* (find-package "CUSTOM_MSGS::WINDOWCMDREQUEST"))
(defconstant custom_msgs::WindowCmdRequest::*CLOSE* 1)
(intern "*OPEN*" (find-package "CUSTOM_MSGS::WINDOWCMDREQUEST"))
(shadow '*OPEN* (find-package "CUSTOM_MSGS::WINDOWCMDREQUEST"))
(defconstant custom_msgs::WindowCmdRequest::*OPEN* 2)

(defun custom_msgs::WindowCmdRequest-to-symbol (const)
  (cond
        ((= const 0) 'custom_msgs::WindowCmdRequest::*TurnOff*)
        ((= const 1) 'custom_msgs::WindowCmdRequest::*Close*)
        ((= const 2) 'custom_msgs::WindowCmdRequest::*Open*)
        (t nil)))

(defclass custom_msgs::WindowCmdRequest
  :super ros::object
  :slots (_WindowEnable ))

(defmethod custom_msgs::WindowCmdRequest
  (:init
   (&key
    ((:WindowEnable __WindowEnable) 0)
    )
   (send-super :init)
   (setq _WindowEnable (round __WindowEnable))
   self)
  (:WindowEnable
   (&optional __WindowEnable)
   (if __WindowEnable (setq _WindowEnable __WindowEnable)) _WindowEnable)
  (:serialization-length
   ()
   (+
    ;; uint8 _WindowEnable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _WindowEnable
       (write-byte _WindowEnable s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _WindowEnable
     (setq _WindowEnable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::WindowCmdResponse
  :super ros::object
  :slots (_res ))

(defmethod custom_msgs::WindowCmdResponse
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

(defclass custom_msgs::WindowCmd
  :super ros::object
  :slots ())

(setf (get custom_msgs::WindowCmd :md5sum-) "fd5f5deae8d571a3248e97a03259cea5")
(setf (get custom_msgs::WindowCmd :datatype-) "custom_msgs/WindowCmd")
(setf (get custom_msgs::WindowCmd :request) custom_msgs::WindowCmdRequest)
(setf (get custom_msgs::WindowCmd :response) custom_msgs::WindowCmdResponse)

(defmethod custom_msgs::WindowCmdRequest
  (:response () (instance custom_msgs::WindowCmdResponse :init)))

(setf (get custom_msgs::WindowCmdRequest :md5sum-) "fd5f5deae8d571a3248e97a03259cea5")
(setf (get custom_msgs::WindowCmdRequest :datatype-) "custom_msgs/WindowCmdRequest")
(setf (get custom_msgs::WindowCmdRequest :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#----------------------------------------------------------------

#请求---------------------------------------------------------
##定义赋值枚举
uint8 TurnOff=0
uint8 Close=1
uint8 Open=2
#
uint8 WindowEnable

---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段


")

(setf (get custom_msgs::WindowCmdResponse :md5sum-) "fd5f5deae8d571a3248e97a03259cea5")
(setf (get custom_msgs::WindowCmdResponse :datatype-) "custom_msgs/WindowCmdResponse")
(setf (get custom_msgs::WindowCmdResponse :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#----------------------------------------------------------------

#请求---------------------------------------------------------
##定义赋值枚举
uint8 TurnOff=0
uint8 Close=1
uint8 Open=2
#
uint8 WindowEnable

---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段


")



(provide :custom_msgs/WindowCmd "fd5f5deae8d571a3248e97a03259cea5")


