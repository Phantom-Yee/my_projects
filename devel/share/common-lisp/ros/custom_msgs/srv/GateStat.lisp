; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude GateStat-request.msg.html

(cl:defclass <GateStat-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass GateStat-request (<GateStat-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GateStat-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GateStat-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<GateStat-request> is deprecated: use custom_msgs-srv:GateStat-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GateStat-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:id-val is deprecated.  Use custom_msgs-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GateStat-request>) ostream)
  "Serializes a message object of type '<GateStat-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GateStat-request>) istream)
  "Deserializes a message object of type '<GateStat-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GateStat-request>)))
  "Returns string type for a service object of type '<GateStat-request>"
  "custom_msgs/GateStatRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GateStat-request)))
  "Returns string type for a service object of type 'GateStat-request"
  "custom_msgs/GateStatRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GateStat-request>)))
  "Returns md5sum for a message object of type '<GateStat-request>"
  "15b8a5807c34c7a623d8c41ae0c40f7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GateStat-request)))
  "Returns md5sum for a message object of type 'GateStat-request"
  "15b8a5807c34c7a623d8c41ae0c40f7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GateStat-request>)))
  "Returns full string definition for message of type '<GateStat-request>"
  (cl:format cl:nil "#------------------------------~%#闸门~%#------------------------------~%int32 id         #闸门id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GateStat-request)))
  "Returns full string definition for message of type 'GateStat-request"
  (cl:format cl:nil "#------------------------------~%#闸门~%#------------------------------~%int32 id         #闸门id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GateStat-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GateStat-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GateStat-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude GateStat-response.msg.html

(cl:defclass <GateStat-response> (roslisp-msg-protocol:ros-message)
  ((stat
    :reader stat
    :initarg :stat
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GateStat-response (<GateStat-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GateStat-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GateStat-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<GateStat-response> is deprecated: use custom_msgs-srv:GateStat-response instead.")))

(cl:ensure-generic-function 'stat-val :lambda-list '(m))
(cl:defmethod stat-val ((m <GateStat-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:stat-val is deprecated.  Use custom_msgs-srv:stat instead.")
  (stat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GateStat-response>) ostream)
  "Serializes a message object of type '<GateStat-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stat) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GateStat-response>) istream)
  "Deserializes a message object of type '<GateStat-response>"
    (cl:setf (cl:slot-value msg 'stat) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GateStat-response>)))
  "Returns string type for a service object of type '<GateStat-response>"
  "custom_msgs/GateStatResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GateStat-response)))
  "Returns string type for a service object of type 'GateStat-response"
  "custom_msgs/GateStatResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GateStat-response>)))
  "Returns md5sum for a message object of type '<GateStat-response>"
  "15b8a5807c34c7a623d8c41ae0c40f7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GateStat-response)))
  "Returns md5sum for a message object of type 'GateStat-response"
  "15b8a5807c34c7a623d8c41ae0c40f7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GateStat-response>)))
  "Returns full string definition for message of type '<GateStat-response>"
  (cl:format cl:nil "bool stat            #闸门状态~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GateStat-response)))
  "Returns full string definition for message of type 'GateStat-response"
  (cl:format cl:nil "bool stat            #闸门状态~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GateStat-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GateStat-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GateStat-response
    (cl:cons ':stat (stat msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GateStat)))
  'GateStat-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GateStat)))
  'GateStat-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GateStat)))
  "Returns string type for a service object of type '<GateStat>"
  "custom_msgs/GateStat")