;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::Object)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'Object (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::OBJECT")
  (make-package "CUSTOM_MSGS::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass custom_msgs::Object
  :super ros::object
  :slots (_id _bbox_point _type _vx _vy _v _lwh _x_pos _y_pos _s_pos _d_pos _lidar_x_pos _lidar_y_pos _lidar_z_pos ))

(defmethod custom_msgs::Object
  (:init
   (&key
    ((:id __id) 0)
    ((:bbox_point __bbox_point) (let (r) (dotimes (i 8) (push (instance geometry_msgs::Point :init) r)) r))
    ((:type __type) 0)
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:v __v) 0.0)
    ((:lwh __lwh) (instance geometry_msgs::Vector3 :init))
    ((:x_pos __x_pos) 0.0)
    ((:y_pos __y_pos) 0.0)
    ((:s_pos __s_pos) 0.0)
    ((:d_pos __d_pos) 0.0)
    ((:lidar_x_pos __lidar_x_pos) 0.0)
    ((:lidar_y_pos __lidar_y_pos) 0.0)
    ((:lidar_z_pos __lidar_z_pos) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _bbox_point __bbox_point)
   (setq _type (round __type))
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _v (float __v))
   (setq _lwh __lwh)
   (setq _x_pos (float __x_pos))
   (setq _y_pos (float __y_pos))
   (setq _s_pos (float __s_pos))
   (setq _d_pos (float __d_pos))
   (setq _lidar_x_pos (float __lidar_x_pos))
   (setq _lidar_y_pos (float __lidar_y_pos))
   (setq _lidar_z_pos (float __lidar_z_pos))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:bbox_point
   (&rest __bbox_point)
   (if (keywordp (car __bbox_point))
       (send* _bbox_point __bbox_point)
     (progn
       (if __bbox_point (setq _bbox_point (car __bbox_point)))
       _bbox_point)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
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
  (:s_pos
   (&optional __s_pos)
   (if __s_pos (setq _s_pos __s_pos)) _s_pos)
  (:d_pos
   (&optional __d_pos)
   (if __d_pos (setq _d_pos __d_pos)) _d_pos)
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
    ;; uint32 _id
    4
    ;; geometry_msgs/Point[8] _bbox_point
    (apply #'+ (send-all _bbox_point :serialization-length))
    ;; int8 _type
    1
    ;; float32 _vx
    4
    ;; float32 _vy
    4
    ;; float32 _v
    4
    ;; geometry_msgs/Vector3 _lwh
    (send _lwh :serialization-length)
    ;; float32 _x_pos
    4
    ;; float32 _y_pos
    4
    ;; float32 _s_pos
    4
    ;; float32 _d_pos
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
     ;; uint32 _id
       (write-long _id s)
     ;; geometry_msgs/Point[8] _bbox_point
     (dolist (elem _bbox_point)
       (send elem :serialize s)
       )
     ;; int8 _type
       (write-byte _type s)
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v
       (sys::poke _v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Vector3 _lwh
       (send _lwh :serialize s)
     ;; float32 _x_pos
       (sys::poke _x_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_pos
       (sys::poke _y_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _s_pos
       (sys::poke _s_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _d_pos
       (sys::poke _d_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point[8] _bbox_point
   (dotimes (i 8)
     (send (elt _bbox_point i) :deserialize buf ptr-) (incf ptr- (send (elt _bbox_point i) :serialization-length))
     )
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v
     (setq _v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _lwh
     (send _lwh :deserialize buf ptr-) (incf ptr- (send _lwh :serialization-length))
   ;; float32 _x_pos
     (setq _x_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_pos
     (setq _y_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _s_pos
     (setq _s_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _d_pos
     (setq _d_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lidar_x_pos
     (setq _lidar_x_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lidar_y_pos
     (setq _lidar_y_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lidar_z_pos
     (setq _lidar_z_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_msgs::Object :md5sum-) "0c5d7a11908c3607cf6c38606ef53961")
(setf (get custom_msgs::Object :datatype-) "custom_msgs/Object")
(setf (get custom_msgs::Object :definition-)
      "#------------------------------
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



(provide :custom_msgs/Object "0c5d7a11908c3607cf6c38606ef53961")


