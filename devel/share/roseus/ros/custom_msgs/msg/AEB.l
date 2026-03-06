;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::AEB)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'AEB (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::AEB")
  (make-package "CUSTOM_MSGS::AEB"))

(in-package "ROS")
;;//! \htmlinclude AEB.msg.html


(defclass custom_msgs::AEB
  :super ros::object
  :slots (_do_aeb _dist ))

(defmethod custom_msgs::AEB
  (:init
   (&key
    ((:do_aeb __do_aeb) nil)
    ((:dist __dist) 0.0)
    )
   (send-super :init)
   (setq _do_aeb __do_aeb)
   (setq _dist (float __dist))
   self)
  (:do_aeb
   (&optional (__do_aeb :null))
   (if (not (eq __do_aeb :null)) (setq _do_aeb __do_aeb)) _do_aeb)
  (:dist
   (&optional __dist)
   (if __dist (setq _dist __dist)) _dist)
  (:serialization-length
   ()
   (+
    ;; bool _do_aeb
    1
    ;; float32 _dist
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _do_aeb
       (if _do_aeb (write-byte -1 s) (write-byte 0 s))
     ;; float32 _dist
       (sys::poke _dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _do_aeb
     (setq _do_aeb (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _dist
     (setq _dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_msgs::AEB :md5sum-) "6cd562658145415c7ce4f97d390f01cb")
(setf (get custom_msgs::AEB :datatype-) "custom_msgs/AEB")
(setf (get custom_msgs::AEB :definition-)
      "bool    do_aeb #是否执行AEB
float32 dist   #目标距离

")



(provide :custom_msgs/AEB "6cd562658145415c7ce4f97d390f01cb")


