;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::LidarRawObjectArray)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'LidarRawObjectArray (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::LIDARRAWOBJECTARRAY")
  (make-package "CUSTOM_MSGS::LIDARRAWOBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude LidarRawObjectArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_msgs::LidarRawObjectArray
  :super ros::object
  :slots (_head _objs ))

(defmethod custom_msgs::LidarRawObjectArray
  (:init
   (&key
    ((:head __head) (instance std_msgs::Header :init))
    ((:objs __objs) ())
    )
   (send-super :init)
   (setq _head __head)
   (setq _objs __objs)
   self)
  (:head
   (&rest __head)
   (if (keywordp (car __head))
       (send* _head __head)
     (progn
       (if __head (setq _head (car __head)))
       _head)))
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
    ;; std_msgs/Header _head
    (send _head :serialization-length)
    ;; custom_msgs/LidarRawObject[] _objs
    (apply #'+ (send-all _objs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _head
       (send _head :serialize s)
     ;; custom_msgs/LidarRawObject[] _objs
     (write-long (length _objs) s)
     (dolist (elem _objs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _head
     (send _head :deserialize buf ptr-) (incf ptr- (send _head :serialization-length))
   ;; custom_msgs/LidarRawObject[] _objs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objs (let (r) (dotimes (i n) (push (instance custom_msgs::LidarRawObject :init) r)) r))
     (dolist (elem- _objs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get custom_msgs::LidarRawObjectArray :md5sum-) "91872448100bff9ab1fc1b93d510c0e4")
(setf (get custom_msgs::LidarRawObjectArray :datatype-) "custom_msgs/LidarRawObjectArray")
(setf (get custom_msgs::LidarRawObjectArray :definition-)
      "#------------------------------
#由激光雷达检测出的目标所组成的序列
#------------------------------

std_msgs/Header head

LidarRawObject[]    objs    #目标序列

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
MSG: custom_msgs/LidarRawObject
#------------------------------
#通过激光雷达检测出的目标
#------------------------------


geometry_msgs/Point[8]    bbox_point  #目标边框的8个顶点


geometry_msgs/Vector3     lwh         #x,y,z分别为目标的长宽高，待定
float32                   x_pos       #x位置，待定
float32                   y_pos       #y位置，待定
float32                   z_pos       #

float32                   lidar_x_pos       #储存雷达坐标，用于目标跟踪
float32                   lidar_y_pos       
float32                   lidar_z_pos
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



(provide :custom_msgs/LidarRawObjectArray "91872448100bff9ab1fc1b93d510c0e4")


