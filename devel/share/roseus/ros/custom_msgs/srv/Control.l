;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::Control)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'Control (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::CONTROL")
  (make-package "CUSTOM_MSGS::CONTROL"))
(unless (find-package "CUSTOM_MSGS::CONTROLREQUEST")
  (make-package "CUSTOM_MSGS::CONTROLREQUEST"))
(unless (find-package "CUSTOM_MSGS::CONTROLRESPONSE")
  (make-package "CUSTOM_MSGS::CONTROLRESPONSE"))

(in-package "ROS")





(intern "*IS_STOP*" (find-package "CUSTOM_MSGS::CONTROLREQUEST"))
(shadow '*IS_STOP* (find-package "CUSTOM_MSGS::CONTROLREQUEST"))
(defconstant custom_msgs::ControlRequest::*IS_STOP* 1)
(intern "*IS_AEB*" (find-package "CUSTOM_MSGS::CONTROLREQUEST"))
(shadow '*IS_AEB* (find-package "CUSTOM_MSGS::CONTROLREQUEST"))
(defconstant custom_msgs::ControlRequest::*IS_AEB* 2)
(intern "*IS_BACK*" (find-package "CUSTOM_MSGS::CONTROLREQUEST"))
(shadow '*IS_BACK* (find-package "CUSTOM_MSGS::CONTROLREQUEST"))
(defconstant custom_msgs::ControlRequest::*IS_BACK* 3)
(intern "*IS_SWITCH_SPEED*" (find-package "CUSTOM_MSGS::CONTROLREQUEST"))
(shadow '*IS_SWITCH_SPEED* (find-package "CUSTOM_MSGS::CONTROLREQUEST"))
(defconstant custom_msgs::ControlRequest::*IS_SWITCH_SPEED* 4)

(defun custom_msgs::ControlRequest-to-symbol (const)
  (cond
        ((= const 1) 'custom_msgs::ControlRequest::*Is_stop*)
        ((= const 2) 'custom_msgs::ControlRequest::*Is_aeb*)
        ((= const 3) 'custom_msgs::ControlRequest::*Is_back*)
        ((= const 4) 'custom_msgs::ControlRequest::*Is_switch_speed*)
        (t nil)))

(defclass custom_msgs::ControlRequest
  :super ros::object
  :slots (_type _enable _info _source ))

(defmethod custom_msgs::ControlRequest
  (:init
   (&key
    ((:type __type) 0)
    ((:enable __enable) nil)
    ((:info __info) 0.0)
    ((:source __source) "")
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _enable __enable)
   (setq _info (float __info))
   (setq _source (string __source))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; bool _enable
    1
    ;; float32 _info
    4
    ;; string _source
    4 (length _source)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; float32 _info
       (sys::poke _info (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _source
       (write-long (length _source) s) (princ _source s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _info
     (setq _info (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass custom_msgs::ControlResponse
  :super ros::object
  :slots (_isSuccess ))

(defmethod custom_msgs::ControlResponse
  (:init
   (&key
    ((:isSuccess __isSuccess) nil)
    )
   (send-super :init)
   (setq _isSuccess __isSuccess)
   self)
  (:isSuccess
   (&optional (__isSuccess :null))
   (if (not (eq __isSuccess :null)) (setq _isSuccess __isSuccess)) _isSuccess)
  (:serialization-length
   ()
   (+
    ;; bool _isSuccess
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isSuccess
       (if _isSuccess (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isSuccess
     (setq _isSuccess (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::Control
  :super ros::object
  :slots ())

(setf (get custom_msgs::Control :md5sum-) "381944d60ba0e70fd89c5bcfc7b6474d")
(setf (get custom_msgs::Control :datatype-) "custom_msgs/Control")
(setf (get custom_msgs::Control :request) custom_msgs::ControlRequest)
(setf (get custom_msgs::Control :response) custom_msgs::ControlResponse)

(defmethod custom_msgs::ControlRequest
  (:response () (instance custom_msgs::ControlResponse :init)))

(setf (get custom_msgs::ControlRequest :md5sum-) "381944d60ba0e70fd89c5bcfc7b6474d")
(setf (get custom_msgs::ControlRequest :datatype-) "custom_msgs/ControlRequest")
(setf (get custom_msgs::ControlRequest :definition-)
      "#------------------------------
#横向规划
#------------------------------

uint8    Is_stop = 1
uint8    Is_aeb  = 2
uint8    Is_back = 3
uint8    Is_switch_speed = 4

uint8   type     #控制类别
bool    enable   #使能
float32 info     #包括速度、刹车距离
string  source   #控制消息来源
---
bool    isSuccess
")

(setf (get custom_msgs::ControlResponse :md5sum-) "381944d60ba0e70fd89c5bcfc7b6474d")
(setf (get custom_msgs::ControlResponse :datatype-) "custom_msgs/ControlResponse")
(setf (get custom_msgs::ControlResponse :definition-)
      "#------------------------------
#横向规划
#------------------------------

uint8    Is_stop = 1
uint8    Is_aeb  = 2
uint8    Is_back = 3
uint8    Is_switch_speed = 4

uint8   type     #控制类别
bool    enable   #使能
float32 info     #包括速度、刹车距离
string  source   #控制消息来源
---
bool    isSuccess
")



(provide :custom_msgs/Control "381944d60ba0e70fd89c5bcfc7b6474d")


