; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude ImageObject.msg.html

(cl:defclass <ImageObject> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
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
    :initform 0.0))
)

(cl:defclass ImageObject (<ImageObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<ImageObject> is deprecated: use custom_msgs-msg:ImageObject instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ImageObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:type-val is deprecated.  Use custom_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'lwh-val :lambda-list '(m))
(cl:defmethod lwh-val ((m <ImageObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:lwh-val is deprecated.  Use custom_msgs-msg:lwh instead.")
  (lwh m))

(cl:ensure-generic-function 'x_pos-val :lambda-list '(m))
(cl:defmethod x_pos-val ((m <ImageObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:x_pos-val is deprecated.  Use custom_msgs-msg:x_pos instead.")
  (x_pos m))

(cl:ensure-generic-function 'y_pos-val :lambda-list '(m))
(cl:defmethod y_pos-val ((m <ImageObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:y_pos-val is deprecated.  Use custom_msgs-msg:y_pos instead.")
  (y_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageObject>) ostream)
  "Serializes a message object of type '<ImageObject>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageObject>) istream)
  "Deserializes a message object of type '<ImageObject>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageObject>)))
  "Returns string type for a message object of type '<ImageObject>"
  "custom_msgs/ImageObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageObject)))
  "Returns string type for a message object of type 'ImageObject"
  "custom_msgs/ImageObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageObject>)))
  "Returns md5sum for a message object of type '<ImageObject>"
  "52fc8c35eac374a9f9e6b53e1bb99dc0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageObject)))
  "Returns md5sum for a message object of type 'ImageObject"
  "52fc8c35eac374a9f9e6b53e1bb99dc0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageObject>)))
  "Returns full string definition for message of type '<ImageObject>"
  (cl:format cl:nil "#------------------------------~%#通过图像检测出的目标~%#------------------------------~%~%int8        type                        #目标类型[待定]~%~%geometry_msgs/Vector3       lwh         #x,y,z分别为目标的长宽高，待定~%float32     x_pos                       #x位置，待定~%float32     y_pos                       #y位置，待定~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageObject)))
  "Returns full string definition for message of type 'ImageObject"
  (cl:format cl:nil "#------------------------------~%#通过图像检测出的目标~%#------------------------------~%~%int8        type                        #目标类型[待定]~%~%geometry_msgs/Vector3       lwh         #x,y,z分别为目标的长宽高，待定~%float32     x_pos                       #x位置，待定~%float32     y_pos                       #y位置，待定~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageObject>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lwh))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageObject>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageObject
    (cl:cons ':type (type msg))
    (cl:cons ':lwh (lwh msg))
    (cl:cons ':x_pos (x_pos msg))
    (cl:cons ':y_pos (y_pos msg))
))
