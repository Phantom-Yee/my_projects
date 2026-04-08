; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude LidarRawObjectArray.msg.html

(cl:defclass <LidarRawObjectArray> (roslisp-msg-protocol:ros-message)
  ((head
    :reader head
    :initarg :head
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objs
    :reader objs
    :initarg :objs
    :type (cl:vector custom_msgs-msg:LidarRawObject)
   :initform (cl:make-array 0 :element-type 'custom_msgs-msg:LidarRawObject :initial-element (cl:make-instance 'custom_msgs-msg:LidarRawObject))))
)

(cl:defclass LidarRawObjectArray (<LidarRawObjectArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarRawObjectArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarRawObjectArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<LidarRawObjectArray> is deprecated: use custom_msgs-msg:LidarRawObjectArray instead.")))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <LidarRawObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:head-val is deprecated.  Use custom_msgs-msg:head instead.")
  (head m))

(cl:ensure-generic-function 'objs-val :lambda-list '(m))
(cl:defmethod objs-val ((m <LidarRawObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:objs-val is deprecated.  Use custom_msgs-msg:objs instead.")
  (objs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarRawObjectArray>) ostream)
  "Serializes a message object of type '<LidarRawObjectArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarRawObjectArray>) istream)
  "Deserializes a message object of type '<LidarRawObjectArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'custom_msgs-msg:LidarRawObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarRawObjectArray>)))
  "Returns string type for a message object of type '<LidarRawObjectArray>"
  "custom_msgs/LidarRawObjectArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarRawObjectArray)))
  "Returns string type for a message object of type 'LidarRawObjectArray"
  "custom_msgs/LidarRawObjectArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarRawObjectArray>)))
  "Returns md5sum for a message object of type '<LidarRawObjectArray>"
  "91872448100bff9ab1fc1b93d510c0e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarRawObjectArray)))
  "Returns md5sum for a message object of type 'LidarRawObjectArray"
  "91872448100bff9ab1fc1b93d510c0e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarRawObjectArray>)))
  "Returns full string definition for message of type '<LidarRawObjectArray>"
  (cl:format cl:nil "#------------------------------~%#由激光雷达检测出的目标所组成的序列~%#------------------------------~%~%std_msgs/Header head~%~%LidarRawObject[]    objs    #目标序列~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: custom_msgs/LidarRawObject~%#------------------------------~%#通过激光雷达检测出的目标~%#------------------------------~%~%~%geometry_msgs/Point[8]    bbox_point  #目标边框的8个顶点~%~%~%geometry_msgs/Vector3     lwh         #x,y,z分别为目标的长宽高，待定~%float32                   x_pos       #x位置，待定~%float32                   y_pos       #y位置，待定~%float32                   z_pos       #~%~%float32                   lidar_x_pos       #储存雷达坐标，用于目标跟踪~%float32                   lidar_y_pos       ~%float32                   lidar_z_pos~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarRawObjectArray)))
  "Returns full string definition for message of type 'LidarRawObjectArray"
  (cl:format cl:nil "#------------------------------~%#由激光雷达检测出的目标所组成的序列~%#------------------------------~%~%std_msgs/Header head~%~%LidarRawObject[]    objs    #目标序列~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: custom_msgs/LidarRawObject~%#------------------------------~%#通过激光雷达检测出的目标~%#------------------------------~%~%~%geometry_msgs/Point[8]    bbox_point  #目标边框的8个顶点~%~%~%geometry_msgs/Vector3     lwh         #x,y,z分别为目标的长宽高，待定~%float32                   x_pos       #x位置，待定~%float32                   y_pos       #y位置，待定~%float32                   z_pos       #~%~%float32                   lidar_x_pos       #储存雷达坐标，用于目标跟踪~%float32                   lidar_y_pos       ~%float32                   lidar_z_pos~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarRawObjectArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarRawObjectArray>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarRawObjectArray
    (cl:cons ':head (head msg))
    (cl:cons ':objs (objs msg))
))
