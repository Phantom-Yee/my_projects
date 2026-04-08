;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::UWBPose)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'UWBPose (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::UWBPOSE")
  (make-package "CUSTOM_MSGS::UWBPOSE"))

(in-package "ROS")
;;//! \htmlinclude UWBPose.msg.html


(defclass custom_msgs::UWBPose
  :super ros::object
  :slots (_x _y _flag ))

(defmethod custom_msgs::UWBPose
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _flag (round __flag))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; int32 _flag
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _flag
       (write-long _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _flag
     (setq _flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_msgs::UWBPose :md5sum-) "561cedfe4089293c1d6cd18dd563a797")
(setf (get custom_msgs::UWBPose :datatype-) "custom_msgs/UWBPose")
(setf (get custom_msgs::UWBPose :definition-)
      "float64         x
float64         y
int32           flag
")



(provide :custom_msgs/UWBPose "561cedfe4089293c1d6cd18dd563a797")


