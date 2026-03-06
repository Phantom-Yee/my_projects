;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::Task)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'Task (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::TASK")
  (make-package "CUSTOM_MSGS::TASK"))
(unless (find-package "CUSTOM_MSGS::TASKREQUEST")
  (make-package "CUSTOM_MSGS::TASKREQUEST"))
(unless (find-package "CUSTOM_MSGS::TASKRESPONSE")
  (make-package "CUSTOM_MSGS::TASKRESPONSE"))

(in-package "ROS")





(intern "*TASK_CONTROL*" (find-package "CUSTOM_MSGS::TASKREQUEST"))
(shadow '*TASK_CONTROL* (find-package "CUSTOM_MSGS::TASKREQUEST"))
(defconstant custom_msgs::TaskRequest::*TASK_CONTROL* 1)
(intern "*NEWPATHMISSION*" (find-package "CUSTOM_MSGS::TASKREQUEST"))
(shadow '*NEWPATHMISSION* (find-package "CUSTOM_MSGS::TASKREQUEST"))
(defconstant custom_msgs::TaskRequest::*NEWPATHMISSION* 2)

(defun custom_msgs::TaskRequest-to-symbol (const)
  (cond
        ((= const 1) 'custom_msgs::TaskRequest::*Task_Control*)
        ((= const 2) 'custom_msgs::TaskRequest::*NewPathMission*)
        (t nil)))

(defclass custom_msgs::TaskRequest
  :super ros::object
  :slots (_task_type _s_start _s_end _info _info_2 ))

(defmethod custom_msgs::TaskRequest
  (:init
   (&key
    ((:task_type __task_type) 0)
    ((:s_start __s_start) 0.0)
    ((:s_end __s_end) 0.0)
    ((:info __info) 0.0)
    ((:info_2 __info_2) 0.0)
    )
   (send-super :init)
   (setq _task_type (round __task_type))
   (setq _s_start (float __s_start))
   (setq _s_end (float __s_end))
   (setq _info (float __info))
   (setq _info_2 (float __info_2))
   self)
  (:task_type
   (&optional __task_type)
   (if __task_type (setq _task_type __task_type)) _task_type)
  (:s_start
   (&optional __s_start)
   (if __s_start (setq _s_start __s_start)) _s_start)
  (:s_end
   (&optional __s_end)
   (if __s_end (setq _s_end __s_end)) _s_end)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:info_2
   (&optional __info_2)
   (if __info_2 (setq _info_2 __info_2)) _info_2)
  (:serialization-length
   ()
   (+
    ;; uint8 _task_type
    1
    ;; float64 _s_start
    8
    ;; float64 _s_end
    8
    ;; float64 _info
    8
    ;; float64 _info_2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _task_type
       (write-byte _task_type s)
     ;; float64 _s_start
       (sys::poke _s_start (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _s_end
       (sys::poke _s_end (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _info
       (sys::poke _info (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _info_2
       (sys::poke _info_2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _task_type
     (setq _task_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _s_start
     (setq _s_start (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _s_end
     (setq _s_end (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _info
     (setq _info (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _info_2
     (setq _info_2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass custom_msgs::TaskResponse
  :super ros::object
  :slots (_isSuccess ))

(defmethod custom_msgs::TaskResponse
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

(defclass custom_msgs::Task
  :super ros::object
  :slots ())

(setf (get custom_msgs::Task :md5sum-) "bd2e6ee9570673e4c686fc680fef4544")
(setf (get custom_msgs::Task :datatype-) "custom_msgs/Task")
(setf (get custom_msgs::Task :request) custom_msgs::TaskRequest)
(setf (get custom_msgs::Task :response) custom_msgs::TaskResponse)

(defmethod custom_msgs::TaskRequest
  (:response () (instance custom_msgs::TaskResponse :init)))

(setf (get custom_msgs::TaskRequest :md5sum-) "bd2e6ee9570673e4c686fc680fef4544")
(setf (get custom_msgs::TaskRequest :datatype-) "custom_msgs/TaskRequest")
(setf (get custom_msgs::TaskRequest :definition-)
      "#------------------------------
#任务请求
#------------------------------
uint8                   Task_Control        = 1    #农机作业任务
uint8                   NewPathMission      = 2    #避障任务操作

uint8     task_type      #任务id
float64   s_start        #任务区间起始
float64   s_end          #任务区间结束
float64   info           #任务信息
float64   info_2         #任务信息2
---
bool isSuccess


")

(setf (get custom_msgs::TaskResponse :md5sum-) "bd2e6ee9570673e4c686fc680fef4544")
(setf (get custom_msgs::TaskResponse :datatype-) "custom_msgs/TaskResponse")
(setf (get custom_msgs::TaskResponse :definition-)
      "#------------------------------
#任务请求
#------------------------------
uint8                   Task_Control        = 1    #农机作业任务
uint8                   NewPathMission      = 2    #避障任务操作

uint8     task_type      #任务id
float64   s_start        #任务区间起始
float64   s_end          #任务区间结束
float64   info           #任务信息
float64   info_2         #任务信息2
---
bool isSuccess


")



(provide :custom_msgs/Task "bd2e6ee9570673e4c686fc680fef4544")


