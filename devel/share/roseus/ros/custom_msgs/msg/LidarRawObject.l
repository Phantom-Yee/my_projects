;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::LidarRawObject)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'LidarRawObject (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::LIDARRAWOBJECT")
  (make-package "CUSTOM_MSGS::LIDARRAWOBJECT"))

(in-package "ROS")
;;//! \htmlinclude LidarRawObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass custom_msgs::LidarRawObject
  :super ros::object
  :slots (_bbox_point _lwh _x_pos _y_pos _z_pos _lidar_x_pos _lidar_y_pos _lidar_z_pos ))

(defmethod custom_msgs::LidarRawObject
  (:init
   (&key
    ((:bbox_point __bbox_point) (let (r) (dotimes (i 8) (push (instance geometry_msgs::Point :init) r)) r))
    ((:lwh __lwh) (instance geometry_msgs::Vector3 :init))
    ((:x_pos __x_pos) 0.0)
    ((:y_pos __y_pos) 0.0)
    ((:z_pos __z_pos) 0.0)
    ((:lidar_x_pos __lidar_x_pos) 0.0)
    ((:lidar_y_pos __lidar_y_pos) 0.0)
    ((:lidar_z_pos __lidar_z_pos) 0.0)
    )
   (send-super :init)
   (setq _bbox_point __bbox_point)
   (setq _lwh __lwh)
   (setq _x_pos (float __x_pos))
   (setq _y_pos (float __y_pos))
   (setq _z_pos (float __z_pos))
   (setq _lidar_x_pos (float __lidar_x_pos))
   (setq _lidar_y_pos (float __lidar_y_pos))
   (setq _lidar_z_pos (float __lidar_z_pos))
   self)
  (:bbox_point
   (&rest __bbox_point)
   (if (keywordp (car __bbox_point))
       (send* _bbox_point __bbox_point)
     (progn
       (if __bbox_point (setq _bbox_point (car __bbox_point)))
       _bbox_point)))
  (:lwh
   (&rest __lwh)
   (if (keywordp (car __lwh))
       (send* _lwh __lwh)
     (progn
       (if __lwh (setq _lwh (car __lwh)))
       _lwh)))
  (:x_pos
   (&optional __x_pos)
   (if __x_pos (setq _x_pos __x_pos)) _x_pos)
  (:y_pos
   (&optional __y_pos)
   (if __y_pos (setq _y_pos __y_pos)) _y_pos)
  (:z_pos
   (&optional __z_pos)
   (if __z_pos (setq _z_pos __z_pos)) _z_pos)
  (:lidar_x_pos
   (&optional __lidar_x_pos)
   (if __lidar_x_pos (setq _lidar_x_pos __lidar_x_pos)) _lidar_x_pos)
  (:lidar_y_pos
   (&optional __lidar_y_pos)
   (if __lidar_y_pos (setq _lidar_y_pos __lidar_y_pos)) _lidar_y_pos)
  (:lidar_z_pos
   (&optional __lidar_z_pos)
   (if __lidar_z_pos (setq _lidar_z_pos __lidar_z_pos)) _lidar_z_pos)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[8] _bbox_point
    (apply #'+ (send-all _bbox_point :serialization-length))
    ;; geometry_msgs/Vector3 _lwh
    (send _lwh :serialization-length)
    ;; float32 _x_pos
    4
    ;; float32 _y_pos
    4
    ;; float32 _z_pos
    4
    ;; float32 _lidar_x_pos
    4
    ;; float32 _lidar_y_pos
    4
    ;; float32 _lidar_z_pos
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[8] _bbox_point
     (dolist (elem _bbox_point)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3 _lwh
       (send _lwh :serialize s)
     ;; float32 _x_pos
       (sys::poke _x_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_pos
       (sys::poke _y_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z_pos
       (sys::poke _z_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lidar_x_pos
       (sys::poke _lidar_x_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lidar_y_pos
       (sys::poke _lidar_y_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lidar_z_pos
       (sys::poke _lidar_z_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[8] _bbox_point
   (dotimes (i 8)
     (send (elt _bbox_point i) :deserialize buf ptr-) (incf ptr- (send (elt _bbox_point i) :serialization-length))
     )
   ;; geometry_msgs/Vector3 _lwh
     (send _lwh :deserialize buf ptr-) (incf ptr- (send _lwh :serialization-length))
   ;; float32 _x_pos
     (setq _x_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_pos
     (setq _y_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z_pos
     (setq _z_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lidar_x_pos
     (setq _lidar_x_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lidar_y_pos
     (setq _lidar_y_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lidar_z_pos
     (setq _lidar_z_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_msgs::LidarRawObject :md5sum-) "b51c36a6f4165e7b94950b3ee65d1f06")
(setf (get custom_msgs::LidarRawObject :datatype-) "custom_msgs/LidarRawObject")
(setf (get custom_msgs::LidarRawObject :definition-)
      "#------------------------------
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



(provide :custom_msgs/LidarRawObject "b51c36a6f4165e7b94950b3ee65d1f06")


