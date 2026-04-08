;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::TaskAttri)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'TaskAttri (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::TASKATTRI")
  (make-package "CUSTOM_MSGS::TASKATTRI"))

(in-package "ROS")
;;//! \htmlinclude TaskAttri.msg.html


(defclass custom_msgs::TaskAttri
  :super ros::object
  :slots (_id_task _task_type _start_s _end_s _notes ))

(defmethod custom_msgs::TaskAttri
  (:init
   (&key
    ((:id_task __id_task) 0)
    ((:task_type __task_type) 0)
    ((:start_s __start_s) 0.0)
    ((:end_s __end_s) 0.0)
    ((:notes __notes) "")
    )
   (send-super :init)
   (setq _id_task (round __id_task))
   (setq _task_type (round __task_type))
   (setq _start_s (float __start_s))
   (setq _end_s (float __end_s))
   (setq _notes (string __notes))
   self)
  (:id_task
   (&optional __id_task)
   (if __id_task (setq _id_task __id_task)) _id_task)
  (:task_type
   (&optional __task_type)
   (if __task_type (setq _task_type __task_type)) _task_type)
  (:start_s
   (&optional __start_s)
   (if __start_s (setq _start_s __start_s)) _start_s)
  (:end_s
   (&optional __end_s)
   (if __end_s (setq _end_s __end_s)) _end_s)
  (:notes
   (&optional __notes)
   (if __notes (setq _notes __notes)) _notes)
  (:serialization-length
   ()
   (+
    ;; int32 _id_task
    4
    ;; int32 _task_type
    4
    ;; float32 _start_s
    4
    ;; float32 _end_s
    4
    ;; string _notes
    4 (length _notes)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id_task
       (write-long _id_task s)
     ;; int32 _task_type
       (write-long _task_type s)
     ;; float32 _start_s
       (sys::poke _start_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _end_s
       (sys::poke _end_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _notes
       (write-long (length _notes) s) (princ _notes s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id_task
     (setq _id_task (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _task_type
     (setq _task_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _start_s
     (setq _start_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _end_s
     (setq _end_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _notes
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _notes (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get custom_msgs::TaskAttri :md5sum-) "b3c6d3805b1b3d7882624a5d472c2497")
(setf (get custom_msgs::TaskAttri :datatype-) "custom_msgs/TaskAttri")
(setf (get custom_msgs::TaskAttri :definition-)
      "#---------------------------------------------------------------
# 作者 ：lsxing
# 时间 ：2020.12.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：描述任务属性的消息结构
#----------------------------------------------------------------   

    int32 id_task       #任务id

    int32 task_type     #任务类型

    float32 start_s     #任务区间
    float32 end_s       

    string notes       #任务说明
")



(provide :custom_msgs/TaskAttri "b3c6d3805b1b3d7882624a5d472c2497")


