;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::Path)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'Path (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::PATH")
  (make-package "CUSTOM_MSGS::PATH"))

(in-package "ROS")
;;//! \htmlinclude Path.msg.html


(defclass custom_msgs::Path
  :super ros::object
  :slots (_x_ref _y_ref ))

(defmethod custom_msgs::Path
  (:init
   (&key
    ((:x_ref __x_ref) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y_ref __y_ref) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _x_ref __x_ref)
   (setq _y_ref __y_ref)
   self)
  (:x_ref
   (&optional __x_ref)
   (if __x_ref (setq _x_ref __x_ref)) _x_ref)
  (:y_ref
   (&optional __y_ref)
   (if __y_ref (setq _y_ref __y_ref)) _y_ref)
  (:serialization-length
   ()
   (+
    ;; float32[] _x_ref
    (* 4    (length _x_ref)) 4
    ;; float32[] _y_ref
    (* 4    (length _y_ref)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _x_ref
     (write-long (length _x_ref) s)
     (dotimes (i (length _x_ref))
       (sys::poke (elt _x_ref i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y_ref
     (write-long (length _y_ref) s)
     (dotimes (i (length _y_ref))
       (sys::poke (elt _y_ref i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _x_ref
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_ref (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x_ref i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y_ref
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_ref (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y_ref i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get custom_msgs::Path :md5sum-) "086c82dabe09cb27a2918dd652bbdfdf")
(setf (get custom_msgs::Path :datatype-) "custom_msgs/Path")
(setf (get custom_msgs::Path :definition-)
      "#------------------------------
#路径规划后所得到的路径点（x,y,v）
#------当前项目中路径点序列长度为30
#------------------------------

float32[]           x_ref      #路径点的x坐标
float32[]           y_ref      #路径点的y坐标
")



(provide :custom_msgs/Path "086c82dabe09cb27a2918dd652bbdfdf")


