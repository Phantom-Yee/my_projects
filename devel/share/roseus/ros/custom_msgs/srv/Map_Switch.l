;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::Map_Switch)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'Map_Switch (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::MAP_SWITCH")
  (make-package "CUSTOM_MSGS::MAP_SWITCH"))
(unless (find-package "CUSTOM_MSGS::MAP_SWITCHREQUEST")
  (make-package "CUSTOM_MSGS::MAP_SWITCHREQUEST"))
(unless (find-package "CUSTOM_MSGS::MAP_SWITCHRESPONSE")
  (make-package "CUSTOM_MSGS::MAP_SWITCHRESPONSE"))

(in-package "ROS")





(defclass custom_msgs::Map_SwitchRequest
  :super ros::object
  :slots (_id ))

(defmethod custom_msgs::Map_SwitchRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::Map_SwitchResponse
  :super ros::object
  :slots (_isSuccess ))

(defmethod custom_msgs::Map_SwitchResponse
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

(defclass custom_msgs::Map_Switch
  :super ros::object
  :slots ())

(setf (get custom_msgs::Map_Switch :md5sum-) "6e0c418adb888dd8625f58056e1e3cec")
(setf (get custom_msgs::Map_Switch :datatype-) "custom_msgs/Map_Switch")
(setf (get custom_msgs::Map_Switch :request) custom_msgs::Map_SwitchRequest)
(setf (get custom_msgs::Map_Switch :response) custom_msgs::Map_SwitchResponse)

(defmethod custom_msgs::Map_SwitchRequest
  (:response () (instance custom_msgs::Map_SwitchResponse :init)))

(setf (get custom_msgs::Map_SwitchRequest :md5sum-) "6e0c418adb888dd8625f58056e1e3cec")
(setf (get custom_msgs::Map_SwitchRequest :datatype-) "custom_msgs/Map_SwitchRequest")
(setf (get custom_msgs::Map_SwitchRequest :definition-)
      "#------------------------------
#地图路段切换
#------------------------------
uint8 id
---
bool isSuccess
")

(setf (get custom_msgs::Map_SwitchResponse :md5sum-) "6e0c418adb888dd8625f58056e1e3cec")
(setf (get custom_msgs::Map_SwitchResponse :datatype-) "custom_msgs/Map_SwitchResponse")
(setf (get custom_msgs::Map_SwitchResponse :definition-)
      "#------------------------------
#地图路段切换
#------------------------------
uint8 id
---
bool isSuccess
")



(provide :custom_msgs/Map_Switch "6e0c418adb888dd8625f58056e1e3cec")


