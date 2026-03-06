;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::GateStat)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'GateStat (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::GATESTAT")
  (make-package "CUSTOM_MSGS::GATESTAT"))
(unless (find-package "CUSTOM_MSGS::GATESTATREQUEST")
  (make-package "CUSTOM_MSGS::GATESTATREQUEST"))
(unless (find-package "CUSTOM_MSGS::GATESTATRESPONSE")
  (make-package "CUSTOM_MSGS::GATESTATRESPONSE"))

(in-package "ROS")





(defclass custom_msgs::GateStatRequest
  :super ros::object
  :slots (_id ))

(defmethod custom_msgs::GateStatRequest
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
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass custom_msgs::GateStatResponse
  :super ros::object
  :slots (_stat ))

(defmethod custom_msgs::GateStatResponse
  (:init
   (&key
    ((:stat __stat) nil)
    )
   (send-super :init)
   (setq _stat __stat)
   self)
  (:stat
   (&optional (__stat :null))
   (if (not (eq __stat :null)) (setq _stat __stat)) _stat)
  (:serialization-length
   ()
   (+
    ;; bool _stat
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _stat
       (if _stat (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _stat
     (setq _stat (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass custom_msgs::GateStat
  :super ros::object
  :slots ())

(setf (get custom_msgs::GateStat :md5sum-) "15b8a5807c34c7a623d8c41ae0c40f7f")
(setf (get custom_msgs::GateStat :datatype-) "custom_msgs/GateStat")
(setf (get custom_msgs::GateStat :request) custom_msgs::GateStatRequest)
(setf (get custom_msgs::GateStat :response) custom_msgs::GateStatResponse)

(defmethod custom_msgs::GateStatRequest
  (:response () (instance custom_msgs::GateStatResponse :init)))

(setf (get custom_msgs::GateStatRequest :md5sum-) "15b8a5807c34c7a623d8c41ae0c40f7f")
(setf (get custom_msgs::GateStatRequest :datatype-) "custom_msgs/GateStatRequest")
(setf (get custom_msgs::GateStatRequest :definition-)
      "#------------------------------
#闸门
#------------------------------
int32 id         #闸门id
---
bool stat            #闸门状态

")

(setf (get custom_msgs::GateStatResponse :md5sum-) "15b8a5807c34c7a623d8c41ae0c40f7f")
(setf (get custom_msgs::GateStatResponse :datatype-) "custom_msgs/GateStatResponse")
(setf (get custom_msgs::GateStatResponse :definition-)
      "#------------------------------
#闸门
#------------------------------
int32 id         #闸门id
---
bool stat            #闸门状态

")



(provide :custom_msgs/GateStat "15b8a5807c34c7a623d8c41ae0c40f7f")


