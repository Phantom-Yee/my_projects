;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::ImageObject)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'ImageObject (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::IMAGEOBJECT")
  (make-package "CUSTOM_MSGS::IMAGEOBJECT"))

(in-package "ROS")
;;//! \htmlinclude ImageObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass custom_msgs::ImageObject
  :super ros::object
  :slots (_type _lwh _x_pos _y_pos ))

(defmethod custom_msgs::ImageObject
  (:init
   (&key
    ((:type __type) 0)
    ((:lwh __lwh) (instance geometry_msgs::Vector3 :init))
    ((:x_pos __x_pos) 0.0)
    ((:y_pos __y_pos) 0.0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _lwh __lwh)
   (setq _x_pos (float __x_pos))
   (setq _y_pos (float __y_pos))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
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
  (:serialization-length
   ()
   (+
    ;; int8 _type
    1
    ;; geometry_msgs/Vector3 _lwh
    (send _lwh :serialization-length)
    ;; float32 _x_pos
    4
    ;; float32 _y_pos
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _type
       (write-byte _type s)
     ;; geometry_msgs/Vector3 _lwh
       (send _lwh :serialize s)
     ;; float32 _x_pos
       (sys::poke _x_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_pos
       (sys::poke _y_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; geometry_msgs/Vector3 _lwh
     (send _lwh :deserialize buf ptr-) (incf ptr- (send _lwh :serialization-length))
   ;; float32 _x_pos
     (setq _x_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_pos
     (setq _y_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_msgs::ImageObject :md5sum-) "52fc8c35eac374a9f9e6b53e1bb99dc0")
(setf (get custom_msgs::ImageObject :datatype-) "custom_msgs/ImageObject")
(setf (get custom_msgs::ImageObject :definition-)
      "#------------------------------
#通过图像检测出的目标
#------------------------------

int8        type                        #目标类型[待定]

geometry_msgs/Vector3       lwh         #x,y,z分别为目标的长宽高，待定
float32     x_pos                       #x位置，待定
float32     y_pos                       #y位置，待定

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



(provide :custom_msgs/ImageObject "52fc8c35eac374a9f9e6b53e1bb99dc0")


