;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::TofsenseCascade)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'TofsenseCascade (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::TOFSENSECASCADE")
  (make-package "CUSTOM_MSGS::TOFSENSECASCADE"))

(in-package "ROS")
;;//! \htmlinclude TofsenseCascade.msg.html


(defclass custom_msgs::TofsenseCascade
  :super ros::object
  :slots (_nodes ))

(defmethod custom_msgs::TofsenseCascade
  (:init
   (&key
    ((:nodes __nodes) ())
    )
   (send-super :init)
   (setq _nodes __nodes)
   self)
  (:nodes
   (&rest __nodes)
   (if (keywordp (car __nodes))
       (send* _nodes __nodes)
     (progn
       (if __nodes (setq _nodes (car __nodes)))
       _nodes)))
  (:serialization-length
   ()
   (+
    ;; custom_msgs/TofsenseFrame0[] _nodes
    (apply #'+ (send-all _nodes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; custom_msgs/TofsenseFrame0[] _nodes
     (write-long (length _nodes) s)
     (dolist (elem _nodes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; custom_msgs/TofsenseFrame0[] _nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nodes (let (r) (dotimes (i n) (push (instance custom_msgs::TofsenseFrame0 :init) r)) r))
     (dolist (elem- _nodes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get custom_msgs::TofsenseCascade :md5sum-) "6f5a4318b44b44ec8258733a82bf1f6c")
(setf (get custom_msgs::TofsenseCascade :datatype-) "custom_msgs/TofsenseCascade")
(setf (get custom_msgs::TofsenseCascade :definition-)
      "TofsenseFrame0[] nodes

================================================================================
MSG: custom_msgs/TofsenseFrame0
uint8 id
uint32 system_time
float32 dis
uint8 dis_status
uint16 signal_strength

")



(provide :custom_msgs/TofsenseCascade "6f5a4318b44b44ec8258733a82bf1f6c")


