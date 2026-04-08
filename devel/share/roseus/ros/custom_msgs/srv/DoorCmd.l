;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::DoorCmd)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'DoorCmd (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::DOORCMD")
  (make-package "CUSTOM_MSGS::DOORCMD"))
(unless (find-package "CUSTOM_MSGS::DOORCMDREQUEST")
  (make-package "CUSTOM_MSGS::DOORCMDREQUEST"))
(unless (find-package "CUSTOM_MSGS::DOORCMDRESPONSE")
  (make-package "CUSTOM_MSGS::DOORCMDRESPONSE"))

(in-package "ROS")





(intern "*NO_CMD*" (find-package "CUSTOM_MSGS::DOORCMDREQUEST"))
(shadow '*NO_CMD* (find-package "CUSTOM_MSGS::DOORCMDREQUEST"))
(defconstant custom_msgs::DoorCmdRequest::*NO_CMD* 0)
(intern "*UNLOCK_CMD*" (find-package "CUSTOM_MSGS::DOORCMDREQUEST"))
(shadow '*UNLOCK_CMD* (find-package "CUSTOM_MSGS::DOORCMDREQUEST"))
(defconstant custom_msgs::DoorCmdRequest::*UNLOCK_CMD* 6)
(intern "*LOCK_CMD*" (find-package "CUSTOM_MSGS::DOORCMDREQUEST"))
(shadow '*LOCK_CMD* (find-package "CUSTOM_MSGS::DOORCMDREQUEST"))
(defconstant custom_msgs::DoorCmdRequest::*LOCK_CMD* 7)

(defun custom_msgs::DoorCmdRequest-to-symbol (const)
  (cond
        ((= const 0) 'custom_msgs::DoorCmdRequest::*NO_CMD*)
        ((= const 6) 'custom_msgs::DoorCmdRequest::*UNLOCK_CMD*)
        ((= const 7) 'custom_msgs::DoorCmdRequest::*LOCK_CMD*)
        (t nil)))

(defclass custom_msgs::DoorCmdRequest
  :super ros::object
  :slots (_DoorLOCK ))

(defmethod custom_msgs::DoorCmdRequest
  (:init
   (&key
    ((:DoorLOCK __DoorLOCK) 0)
    )
   (send-super :init)
   (setq _DoorLOCK (round __DoorLOCK))
   self)
  (:DoorLOCK
   (&optional __DoorLOCK)
   (if __DoorLOCK (setq _DoorLOCK __DoorLOCK)) _DoorLOCK)
  (:serialization-length
   ()
   (+
    ;; uint8 _DoorLOCK
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _DoorLOCK
       (write-byte _DoorLOCK s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _DoorLOCK
     (setq _DoorLOCK (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::DoorCmdResponse
  :super ros::object
  :slots (_res ))

(defmethod custom_msgs::DoorCmdResponse
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

(defclass custom_msgs::DoorCmd
  :super ros::object
  :slots ())

(setf (get custom_msgs::DoorCmd :md5sum-) "61d6d40c0b7064601d49a385243830d5")
(setf (get custom_msgs::DoorCmd :datatype-) "custom_msgs/DoorCmd")
(setf (get custom_msgs::DoorCmd :request) custom_msgs::DoorCmdRequest)
(setf (get custom_msgs::DoorCmd :response) custom_msgs::DoorCmdResponse)

(defmethod custom_msgs::DoorCmdRequest
  (:response () (instance custom_msgs::DoorCmdResponse :init)))

(setf (get custom_msgs::DoorCmdRequest :md5sum-) "61d6d40c0b7064601d49a385243830d5")
(setf (get custom_msgs::DoorCmdRequest :datatype-) "custom_msgs/DoorCmdRequest")
(setf (get custom_msgs::DoorCmdRequest :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#      BCM BCM_Door 门锁控制
#         0x0  APA_NO_CMD
#         0x1  APA_UNLOCK_CMD
#         0x2  APA_LOCK_CMD
#----------------------------------------------------------------

#请求------------------------------------------------------------
##定义赋值枚举
uint8 NO_CMD=0
uint8 UNLOCK_CMD=6
uint8 LOCK_CMD=7
#控制字段
uint8 DoorLOCK


---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段


")

(setf (get custom_msgs::DoorCmdResponse :md5sum-) "61d6d40c0b7064601d49a385243830d5")
(setf (get custom_msgs::DoorCmdResponse :datatype-) "custom_msgs/DoorCmdResponse")
(setf (get custom_msgs::DoorCmdResponse :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#      BCM BCM_Door 门锁控制
#         0x0  APA_NO_CMD
#         0x1  APA_UNLOCK_CMD
#         0x2  APA_LOCK_CMD
#----------------------------------------------------------------

#请求------------------------------------------------------------
##定义赋值枚举
uint8 NO_CMD=0
uint8 UNLOCK_CMD=6
uint8 LOCK_CMD=7
#控制字段
uint8 DoorLOCK


---
#返回值-----------------------------------------------------------
##定义赋值枚举
bool res
#控制字段


")



(provide :custom_msgs/DoorCmd "61d6d40c0b7064601d49a385243830d5")


