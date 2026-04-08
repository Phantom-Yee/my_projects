; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude LidarRawObject.msg.html

(cl:defclass <LidarRawObject> (roslisp-msg-protocol:ros-message)
  ((bbox_point
    :reader bbox_point
    :initarg :bbox_point
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 8 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (lwh
    :reader lwh
    :initarg :lwh
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (x_pos
    :reader x_pos
    :initarg :x_pos
    :type cl:float
    :initform 0.0)
   (y_pos
    :reader y_pos
    :initarg :y_pos
    :type cl:float
    :initform 0.0)
   (z_pos
    :reader z_pos
    :initarg :z_pos
    :type cl:float
    :initform 0.0)
   (lidar_x_pos
    :reader lidar_x_pos
    :initarg :lidar_x_pos
    :type cl:float
    :initform 0.0)
   (lidar_y_pos
    :reader lidar_y_pos
    :initarg :lidar_y_pos
    :type cl:float
    :initform 0.0)
   (lidar_z_pos
    :reader lidar_z_pos
    :initarg :lidar_z_pos
    :type cl:float
    :initform 0.0))
)

(cl:defclass LidarRawObject (<LidarRawObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarRawObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarRawObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<LidarRawObject> is deprecated: use custom_msgs-msg:LidarRawObject instead.")))

(cl:ensure-generic-function 'bbox_point-val :lambda-list '(m))
(cl:defmethod bbox_point-val ((m <LidarRawObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:bbox_point-val is deprecated.  Use custom_msgs-msg:bbox_point instead.")
  (bbox_point m))

(cl:ensure-generic-function 'lwh-val :lambda-list '(m))
(cl:defmethod lwh-val ((m <LidarRawObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:lwh-val is deprecated.  Use custom_msgs-msg:lwh instead.")
  (lwh m))

(cl:ensure-generic-function 'x_pos-val :lambda-list '(m))
(cl:defmethod x_pos-val ((m <LidarRawObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:x_pos-val is deprecated.  Use custom_msgs-msg:x_pos instead.")
  (x_pos m))

(cl:ensure-generic-function 'y_pos-val :lambda-list '(m))
(cl:defmethod y_pos-val ((m <LidarRawObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:y_pos-val is deprecated.  Use custom_msgs-msg:y_pos instead.")
  (y_pos m))

(cl:ensure-generic-function 'z_pos-val :lambda-list '(m))
(cl:defmethod z_pos-val ((m <LidarRawObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:z_pos-val is deprecated.  Use custom_msgs-msg:z_pos instead.")
  (z_pos m))

(cl:ensure-generic-function 'lidar_x_pos-val :lambda-list '(m))
(cl:defmethod lidar_x_pos-val ((m <LidarRawObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:lidar_x_pos-val is deprecated.  Use custom_msgs-msg:lidar_x_pos instead.")
  (lidar_x_pos m))

(cl:ensure-generic-function 'lidar_y_pos-val :lambda-list '(m))
(cl:defmethod lidar_y_pos-val ((m <LidarRawObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:lidar_y_pos-val is deprecated.  Use custom_msgs-msg:lidar_y_pos instead.")
  (lidar_y_pos m))

(cl:ensure-generic-function 'lidar_z_pos-val :lambda-list '(m))
(cl:defmethod lidar_z_pos-val ((m <LidarRawObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:lidar_z_pos-val is deprecated.  Use custom_msgs-msg:lidar_z_pos instead.")
  (lidar_z_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarRawObject>) ostream)
  "Serializes a message object of type '<LidarRawObject>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bbox_point))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lwh) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lidar_x_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lidar_y_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lidar_z_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarRawObject>) istream)
  "Deserializes a message object of type '<LidarRawObject>"
  (cl:setf (cl:slot-value msg 'bbox_point) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'bbox_point)))
    (cl:dotimes (i 8)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lwh) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lidar_x_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lidar_y_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lidar_z_pos) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarRawObject>)))
  "Returns string type for a message object of type '<LidarRawObject>"
  "custom_msgs/LidarRawObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarRawObject)))
  "Returns string type for a message object of type 'LidarRawObject"
  "custom_msgs/LidarRawObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarRawObject>)))
  "Returns md5sum for a message object of type '<LidarRawObject>"
  "b51c36a6f4165e7b94950b3ee65d1f06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarRawObject)))
  "Returns md5sum for a message object of type 'LidarRawObject"
  "b51c36a6f4165e7b94950b3ee65d1f06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarRawObject>)))
  "Returns full string definition for message of type '<LidarRawObject>"
  (cl:format cl:nil "#------------------------------~%#通过激光雷达检测出的目标~%#------------------------------~%~%~%geometry_msgs/Point[8]    bbox_point  #目标边框的8个顶点~%~%~%geometry_msgs/Vector3     lwh         #x,y,z分别为目标的长宽高，待定~%float32                   x_pos       #x位置，待定~%float32                   y_pos       #y位置，待定~%float32                   z_pos       #~%~%float32                   lidar_x_pos       #储存雷达坐标，用于目标跟踪~%float32                   lidar_y_pos       ~%float32                   lidar_z_pos~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarRawObject)))
  "Returns full string definition for message of type 'LidarRawObject"
  (cl:format cl:nil "#------------------------------~%#通过激光雷达检测出的目标~%#------------------------------~%~%~%geometry_msgs/Point[8]    bbox_point  #目标边框的8个顶点~%~%~%geometry_msgs/Vector3     lwh         #x,y,z分别为目标的长宽高，待定~%float32                   x_pos       #x位置，待定~%float32                   y_pos       #y位置，待定~%float32                   z_pos       #~%~%float32                   lidar_x_pos       #储存雷达坐标，用于目标跟踪~%float32                   lidar_y_pos       ~%float32                   lidar_z_pos~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarRawObject>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'bbox_point) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lwh))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarRawObject>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarRawObject
    (cl:cons ':bbox_point (bbox_point msg))
    (cl:cons ':lwh (lwh msg))
    (cl:cons ':x_pos (x_pos msg))
    (cl:cons ':y_pos (y_pos msg))
    (cl:cons ':z_pos (z_pos msg))
    (cl:cons ':lidar_x_pos (lidar_x_pos msg))
    (cl:cons ':lidar_y_pos (lidar_y_pos msg))
    (cl:cons ':lidar_z_pos (lidar_z_pos msg))
))
