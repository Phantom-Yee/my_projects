; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude AEB.msg.html

(cl:defclass <AEB> (roslisp-msg-protocol:ros-message)
  ((do_aeb
    :reader do_aeb
    :initarg :do_aeb
    :type cl:boolean
    :initform cl:nil)
   (dist
    :reader dist
    :initarg :dist
    :type cl:float
    :initform 0.0))
)

(cl:defclass AEB (<AEB>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AEB>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AEB)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<AEB> is deprecated: use custom_msgs-msg:AEB instead.")))

(cl:ensure-generic-function 'do_aeb-val :lambda-list '(m))
(cl:defmethod do_aeb-val ((m <AEB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:do_aeb-val is deprecated.  Use custom_msgs-msg:do_aeb instead.")
  (do_aeb m))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <AEB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:dist-val is deprecated.  Use custom_msgs-msg:dist instead.")
  (dist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AEB>) ostream)
  "Serializes a message object of type '<AEB>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'do_aeb) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AEB>) istream)
  "Deserializes a message object of type '<AEB>"
    (cl:setf (cl:slot-value msg 'do_aeb) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AEB>)))
  "Returns string type for a message object of type '<AEB>"
  "custom_msgs/AEB")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AEB)))
  "Returns string type for a message object of type 'AEB"
  "custom_msgs/AEB")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AEB>)))
  "Returns md5sum for a message object of type '<AEB>"
  "6cd562658145415c7ce4f97d390f01cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AEB)))
  "Returns md5sum for a message object of type 'AEB"
  "6cd562658145415c7ce4f97d390f01cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AEB>)))
  "Returns full string definition for message of type '<AEB>"
  (cl:format cl:nil "bool    do_aeb #是否执行AEB~%float32 dist   #目标距离~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AEB)))
  "Returns full string definition for message of type 'AEB"
  (cl:format cl:nil "bool    do_aeb #是否执行AEB~%float32 dist   #目标距离~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AEB>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AEB>))
  "Converts a ROS message object to a list"
  (cl:list 'AEB
    (cl:cons ':do_aeb (do_aeb msg))
    (cl:cons ':dist (dist msg))
))
