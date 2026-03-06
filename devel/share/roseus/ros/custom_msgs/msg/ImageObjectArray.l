;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::ImageObjectArray)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'ImageObjectArray (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::IMAGEOBJECTARRAY")
  (make-package "CUSTOM_MSGS::IMAGEOBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude ImageObjectArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_msgs::ImageObjectArray
  :super ros::object
  :slots (_head _objs ))

(defmethod custom_msgs::ImageObjectArray
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
    ;; custom_msgs/ImageObject[] _objs
    (apply #'+ (send-all _objs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _head
       (send _head :serialize s)
     ;; custom_msgs/ImageObject[] _objs
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
   ;; custom_msgs/ImageObject[] _objs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objs (let (r) (dotimes (i n) (push (instance custom_msgs::ImageObject :init) r)) r))
     (dolist (elem- _objs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get custom_msgs::ImageObjectArray :md5sum-) "6375b750fc7c3bdc9afc6cc976bc0fbd")
(setf (get custom_msgs::ImageObjectArray :datatype-) "custom_msgs/ImageObjectArray")
(setf (get custom_msgs::ImageObjectArray :definition-)
      "#------------------------------
#通过图像检测出的目标序列
#------------------------------

std_msgs/Header head

ImageObject[]    objs    #目标序列

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
MSG: custom_msgs/ImageObject
#------------------------------
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



(provide :custom_msgs/ImageObjectArray "6375b750fc7c3bdc9afc6cc976bc0fbd")


