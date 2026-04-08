;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::ObjectArray)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'ObjectArray (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::OBJECTARRAY")
  (make-package "CUSTOM_MSGS::OBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude ObjectArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_msgs::ObjectArray
  :super ros::object
  :slots (_header _objs ))

(defmethod custom_msgs::ObjectArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objs __objs) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _objs __objs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objs
   (&rest __objs)
   (if (keywordp (car __objs))
       (send* _objs __objs)
     (progn
       (if __objs (setq _objs (car __objs)))
       _objs)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; custom_msgs/Object[] _objs
    (apply #'+ (send-all _objs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; custom_msgs/Object[] _objs
     (write-long (length _objs) s)
     (dolist (elem _objs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; custom_msgs/Object[] _objs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objs (let (r) (dotimes (i n) (push (instance custom_msgs::Object :init) r)) r))
     (dolist (elem- _objs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get custom_msgs::ObjectArray :md5sum-) "d495b11e70f2d1f81d0ea8f651098c2e")
(setf (get custom_msgs::ObjectArray :datatype-) "custom_msgs/ObjectArray")
(setf (get custom_msgs::ObjectArray :definition-)
      "#------------------------------
#经过滤波后的目标序列
#------------------------------


std_msgs/Header     header

Object[]         objs

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: custom_msgs/Object
#------------------------------
#经过滤波后的目标
#------------------------------


uint32      id                          #目标id
geometry_msgs/Point[8]    bbox_point    #目标边框的8个顶点
int8        type                        #目标类型[-1，unknown][1,car][2,pedestrian]

float32     vx                          #x方向速度，m/s
float32     vy                          #y方向速度，m/s
float32     v                           #总速度，km/h


geometry_msgs/Vector3       lwh         #x,y,z分别为目标的长宽高,待定
float32     x_pos                       #x位置，待定
float32     y_pos                       #y位置，待定

float32     s_pos                       #s位置
float32     d_pos                       #d位置

float32     lidar_x_pos                 #储存雷达坐标，用于目标跟踪
float32     lidar_y_pos
float32     lidar_z_pos
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :custom_msgs/ObjectArray "d495b11e70f2d1f81d0ea8f651098c2e")


