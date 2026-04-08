;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::Route)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'Route (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::ROUTE")
  (make-package "CUSTOM_MSGS::ROUTE"))
(unless (find-package "CUSTOM_MSGS::ROUTEREQUEST")
  (make-package "CUSTOM_MSGS::ROUTEREQUEST"))
(unless (find-package "CUSTOM_MSGS::ROUTERESPONSE")
  (make-package "CUSTOM_MSGS::ROUTERESPONSE"))

(in-package "ROS")





(defclass custom_msgs::RouteRequest
  :super ros::object
  :slots (_enable _target_d _target_s ))

(defmethod custom_msgs::RouteRequest
  (:init
   (&key
    ((:enable __enable) nil)
    ((:target_d __target_d) 0.0)
    ((:target_s __target_s) 0.0)
    )
   (send-super :init)
   (setq _enable __enable)
   (setq _target_d (float __target_d))
   (setq _target_s (float __target_s))
   self)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:target_d
   (&optional __target_d)
   (if __target_d (setq _target_d __target_d)) _target_d)
  (:target_s
   (&optional __target_s)
   (if __target_s (setq _target_s __target_s)) _target_s)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ;; float32 _target_d
    4
    ;; float32 _target_s
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; float32 _target_d
       (sys::poke _target_d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _target_s
       (sys::poke _target_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _target_d
     (setq _target_d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_s
     (setq _target_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass custom_msgs::RouteResponse
  :super ros::object
  :slots (_isSuccess ))

(defmethod custom_msgs::RouteResponse
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

(defclass custom_msgs::Route
  :super ros::object
  :slots ())

(setf (get custom_msgs::Route :md5sum-) "663e98081c7595a2a31a9cd17c6fa431")
(setf (get custom_msgs::Route :datatype-) "custom_msgs/Route")
(setf (get custom_msgs::Route :request) custom_msgs::RouteRequest)
(setf (get custom_msgs::Route :response) custom_msgs::RouteResponse)

(defmethod custom_msgs::RouteRequest
  (:response () (instance custom_msgs::RouteResponse :init)))

(setf (get custom_msgs::RouteRequest :md5sum-) "663e98081c7595a2a31a9cd17c6fa431")
(setf (get custom_msgs::RouteRequest :datatype-) "custom_msgs/RouteRequest")
(setf (get custom_msgs::RouteRequest :definition-)
      "#------------------------------
#路径规划
#------------------------------
bool     enable     #变道使能
float32  target_d   #平移距离
float32  target_s   #行驶target_s米后平移完成
---
bool    isSuccess
")

(setf (get custom_msgs::RouteResponse :md5sum-) "663e98081c7595a2a31a9cd17c6fa431")
(setf (get custom_msgs::RouteResponse :datatype-) "custom_msgs/RouteResponse")
(setf (get custom_msgs::RouteResponse :definition-)
      "#------------------------------
#路径规划
#------------------------------
bool     enable     #变道使能
float32  target_d   #平移距离
float32  target_s   #行驶target_s米后平移完成
---
bool    isSuccess
")



(provide :custom_msgs/Route "663e98081c7595a2a31a9cd17c6fa431")


