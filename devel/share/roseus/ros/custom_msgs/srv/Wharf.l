;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::Wharf)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'Wharf (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::WHARF")
  (make-package "CUSTOM_MSGS::WHARF"))
(unless (find-package "CUSTOM_MSGS::WHARFREQUEST")
  (make-package "CUSTOM_MSGS::WHARFREQUEST"))
(unless (find-package "CUSTOM_MSGS::WHARFRESPONSE")
  (make-package "CUSTOM_MSGS::WHARFRESPONSE"))

(in-package "ROS")





(defclass custom_msgs::WharfRequest
  :super ros::object
  :slots (_enable ))

(defmethod custom_msgs::WharfRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::WharfResponse
  :super ros::object
  :slots (_distance ))

(defmethod custom_msgs::WharfResponse
  (:init
   (&key
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass custom_msgs::Wharf
  :super ros::object
  :slots ())

(setf (get custom_msgs::Wharf :md5sum-) "beeb1d84fce657cfd73dfadb6e25adb9")
(setf (get custom_msgs::Wharf :datatype-) "custom_msgs/Wharf")
(setf (get custom_msgs::Wharf :request) custom_msgs::WharfRequest)
(setf (get custom_msgs::Wharf :response) custom_msgs::WharfResponse)

(defmethod custom_msgs::WharfRequest
  (:response () (instance custom_msgs::WharfResponse :init)))

(setf (get custom_msgs::WharfRequest :md5sum-) "beeb1d84fce657cfd73dfadb6e25adb9")
(setf (get custom_msgs::WharfRequest :datatype-) "custom_msgs/WharfRequest")
(setf (get custom_msgs::WharfRequest :definition-)
      "#------------------------------
#lidar码头检测
#------------------------------
bool enable          
---
float32 distance      #距离码头距离
")

(setf (get custom_msgs::WharfResponse :md5sum-) "beeb1d84fce657cfd73dfadb6e25adb9")
(setf (get custom_msgs::WharfResponse :datatype-) "custom_msgs/WharfResponse")
(setf (get custom_msgs::WharfResponse :definition-)
      "#------------------------------
#lidar码头检测
#------------------------------
bool enable          
---
float32 distance      #距离码头距离
")



(provide :custom_msgs/Wharf "beeb1d84fce657cfd73dfadb6e25adb9")


