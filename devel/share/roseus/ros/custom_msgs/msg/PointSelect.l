;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::PointSelect)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'PointSelect (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::POINTSELECT")
  (make-package "CUSTOM_MSGS::POINTSELECT"))

(in-package "ROS")
;;//! \htmlinclude PointSelect.msg.html


(defclass custom_msgs::PointSelect
  :super ros::object
  :slots (_type _point_1 _point_2 ))

(defmethod custom_msgs::PointSelect
  (:init
   (&key
    ((:type __type) 0.0)
    ((:point_1 __point_1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:point_2 __point_2) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _type (float __type))
   (setq _point_1 __point_1)
   (setq _point_2 __point_2)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:point_1
   (&optional __point_1)
   (if __point_1 (setq _point_1 __point_1)) _point_1)
  (:point_2
   (&optional __point_2)
   (if __point_2 (setq _point_2 __point_2)) _point_2)
  (:serialization-length
   ()
   (+
    ;; float32 _type
    4
    ;; float32[] _point_1
    (* 4    (length _point_1)) 4
    ;; float32[] _point_2
    (* 4    (length _point_2)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _type
       (sys::poke _type (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _point_1
     (write-long (length _point_1) s)
     (dotimes (i (length _point_1))
       (sys::poke (elt _point_1 i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _point_2
     (write-long (length _point_2) s)
     (dotimes (i (length _point_2))
       (sys::poke (elt _point_2 i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _type
     (setq _type (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _point_1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _point_1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _point_1 i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _point_2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _point_2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _point_2 i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get custom_msgs::PointSelect :md5sum-) "bf7582f3b5bfc0a64281c25459c0b234")
(setf (get custom_msgs::PointSelect :datatype-) "custom_msgs/PointSelect")
(setf (get custom_msgs::PointSelect :definition-)
      "float32     type                         #路径类型 0:无  s 1:直线  2：圆弧
float32[]   point_1                      #点1
float32[]   point_2                      #点
")



(provide :custom_msgs/PointSelect "bf7582f3b5bfc0a64281c25459c0b234")


