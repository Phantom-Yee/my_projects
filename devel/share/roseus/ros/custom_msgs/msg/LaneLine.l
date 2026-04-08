;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::LaneLine)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'LaneLine (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::LANELINE")
  (make-package "CUSTOM_MSGS::LANELINE"))

(in-package "ROS")
;;//! \htmlinclude LaneLine.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass custom_msgs::LaneLine
  :super ros::object
  :slots (_id _type _x _y _s _points _current_lane_num ))

(defmethod custom_msgs::LaneLine
  (:init
   (&key
    ((:id __id) 0)
    ((:type __type) 0)
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:s __s) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:points __points) ())
    ((:current_lane_num __current_lane_num) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _x __x)
   (setq _y __y)
   (setq _s __s)
   (setq _points __points)
   (setq _current_lane_num (round __current_lane_num))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:current_lane_num
   (&optional __current_lane_num)
   (if __current_lane_num (setq _current_lane_num __current_lane_num)) _current_lane_num)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; uint8 _type
    1
    ;; float64[] _x
    (* 8    (length _x)) 4
    ;; float64[] _y
    (* 8    (length _y)) 4
    ;; float64[] _s
    (* 8    (length _s)) 4
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; uint8 _current_lane_num
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; uint8 _type
       (write-byte _type s)
     ;; float64[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _s
     (write-long (length _s) s)
     (dotimes (i (length _s))
       (sys::poke (elt _s i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; uint8 _current_lane_num
       (write-byte _current_lane_num s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _s
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _s (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _s i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _current_lane_num
     (setq _current_lane_num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get custom_msgs::LaneLine :md5sum-) "f3ebb5bbdb4203b7c30588c0e1e0db20")
(setf (get custom_msgs::LaneLine :datatype-) "custom_msgs/LaneLine")
(setf (get custom_msgs::LaneLine :definition-)
      "#------------------------------
#车道线
#------当前项目中车道线点序列长度为30
#------geometry_msgs/Point类型是（x,y,z),目前只填充x,y忽略z
#------------------------------
uint32                         id
uint8                          type
float64[]                      x
float64[]                      y
float64[]                      s

geometry_msgs/Point[]          points
uint8                          current_lane_num
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :custom_msgs/LaneLine "f3ebb5bbdb4203b7c30588c0e1e0db20")


