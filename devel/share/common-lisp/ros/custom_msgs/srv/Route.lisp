; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude Route-request.msg.html

(cl:defclass <Route-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (target_d
    :reader target_d
    :initarg :target_d
    :type cl:float
    :initform 0.0)
   (target_s
    :reader target_s
    :initarg :target_s
    :type cl:float
    :initform 0.0))
)

(cl:defclass Route-request (<Route-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Route-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Route-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<Route-request> is deprecated: use custom_msgs-srv:Route-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <Route-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:enable-val is deprecated.  Use custom_msgs-srv:enable instead.")
  (enable m))

(cl:ensure-generic-function 'target_d-val :lambda-list '(m))
(cl:defmethod target_d-val ((m <Route-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:target_d-val is deprecated.  Use custom_msgs-srv:target_d instead.")
  (target_d m))

(cl:ensure-generic-function 'target_s-val :lambda-list '(m))
(cl:defmethod target_s-val ((m <Route-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:target_s-val is deprecated.  Use custom_msgs-srv:target_s instead.")
  (target_s m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Route-request>) ostream)
  "Serializes a message object of type '<Route-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Route-request>) istream)
  "Deserializes a message object of type '<Route-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_d) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_s) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Route-request>)))
  "Returns string type for a service object of type '<Route-request>"
  "custom_msgs/RouteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Route-request)))
  "Returns string type for a service object of type 'Route-request"
  "custom_msgs/RouteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Route-request>)))
  "Returns md5sum for a message object of type '<Route-request>"
  "663e98081c7595a2a31a9cd17c6fa431")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Route-request)))
  "Returns md5sum for a message object of type 'Route-request"
  "663e98081c7595a2a31a9cd17c6fa431")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Route-request>)))
  "Returns full string definition for message of type '<Route-request>"
  (cl:format cl:nil "#------------------------------~%#路径规划~%#------------------------------~%bool     enable     #变道使能~%float32  target_d   #平移距离~%float32  target_s   #行驶target_s米后平移完成~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Route-request)))
  "Returns full string definition for message of type 'Route-request"
  (cl:format cl:nil "#------------------------------~%#路径规划~%#------------------------------~%bool     enable     #变道使能~%float32  target_d   #平移距离~%float32  target_s   #行驶target_s米后平移完成~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Route-request>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Route-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Route-request
    (cl:cons ':enable (enable msg))
    (cl:cons ':target_d (target_d msg))
    (cl:cons ':target_s (target_s msg))
))
;//! \htmlinclude Route-response.msg.html

(cl:defclass <Route-response> (roslisp-msg-protocol:ros-message)
  ((isSuccess
    :reader isSuccess
    :initarg :isSuccess
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Route-response (<Route-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Route-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Route-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<Route-response> is deprecated: use custom_msgs-srv:Route-response instead.")))

(cl:ensure-generic-function 'isSuccess-val :lambda-list '(m))
(cl:defmethod isSuccess-val ((m <Route-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:isSuccess-val is deprecated.  Use custom_msgs-srv:isSuccess instead.")
  (isSuccess m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Route-response>) ostream)
  "Serializes a message object of type '<Route-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSuccess) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Route-response>) istream)
  "Deserializes a message object of type '<Route-response>"
    (cl:setf (cl:slot-value msg 'isSuccess) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Route-response>)))
  "Returns string type for a service object of type '<Route-response>"
  "custom_msgs/RouteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Route-response)))
  "Returns string type for a service object of type 'Route-response"
  "custom_msgs/RouteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Route-response>)))
  "Returns md5sum for a message object of type '<Route-response>"
  "663e98081c7595a2a31a9cd17c6fa431")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Route-response)))
  "Returns md5sum for a message object of type 'Route-response"
  "663e98081c7595a2a31a9cd17c6fa431")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Route-response>)))
  "Returns full string definition for message of type '<Route-response>"
  (cl:format cl:nil "bool    isSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Route-response)))
  "Returns full string definition for message of type 'Route-response"
  (cl:format cl:nil "bool    isSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Route-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Route-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Route-response
    (cl:cons ':isSuccess (isSuccess msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Route)))
  'Route-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Route)))
  'Route-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Route)))
  "Returns string type for a service object of type '<Route>"
  "custom_msgs/Route")