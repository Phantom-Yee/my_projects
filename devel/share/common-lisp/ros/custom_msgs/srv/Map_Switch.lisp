; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude Map_Switch-request.msg.html

(cl:defclass <Map_Switch-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Map_Switch-request (<Map_Switch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Map_Switch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Map_Switch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<Map_Switch-request> is deprecated: use custom_msgs-srv:Map_Switch-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Map_Switch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:id-val is deprecated.  Use custom_msgs-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Map_Switch-request>) ostream)
  "Serializes a message object of type '<Map_Switch-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Map_Switch-request>) istream)
  "Deserializes a message object of type '<Map_Switch-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Map_Switch-request>)))
  "Returns string type for a service object of type '<Map_Switch-request>"
  "custom_msgs/Map_SwitchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Map_Switch-request)))
  "Returns string type for a service object of type 'Map_Switch-request"
  "custom_msgs/Map_SwitchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Map_Switch-request>)))
  "Returns md5sum for a message object of type '<Map_Switch-request>"
  "6e0c418adb888dd8625f58056e1e3cec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Map_Switch-request)))
  "Returns md5sum for a message object of type 'Map_Switch-request"
  "6e0c418adb888dd8625f58056e1e3cec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Map_Switch-request>)))
  "Returns full string definition for message of type '<Map_Switch-request>"
  (cl:format cl:nil "#------------------------------~%#地图路段切换~%#------------------------------~%uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Map_Switch-request)))
  "Returns full string definition for message of type 'Map_Switch-request"
  (cl:format cl:nil "#------------------------------~%#地图路段切换~%#------------------------------~%uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Map_Switch-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Map_Switch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Map_Switch-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude Map_Switch-response.msg.html

(cl:defclass <Map_Switch-response> (roslisp-msg-protocol:ros-message)
  ((isSuccess
    :reader isSuccess
    :initarg :isSuccess
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Map_Switch-response (<Map_Switch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Map_Switch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Map_Switch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<Map_Switch-response> is deprecated: use custom_msgs-srv:Map_Switch-response instead.")))

(cl:ensure-generic-function 'isSuccess-val :lambda-list '(m))
(cl:defmethod isSuccess-val ((m <Map_Switch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:isSuccess-val is deprecated.  Use custom_msgs-srv:isSuccess instead.")
  (isSuccess m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Map_Switch-response>) ostream)
  "Serializes a message object of type '<Map_Switch-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSuccess) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Map_Switch-response>) istream)
  "Deserializes a message object of type '<Map_Switch-response>"
    (cl:setf (cl:slot-value msg 'isSuccess) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Map_Switch-response>)))
  "Returns string type for a service object of type '<Map_Switch-response>"
  "custom_msgs/Map_SwitchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Map_Switch-response)))
  "Returns string type for a service object of type 'Map_Switch-response"
  "custom_msgs/Map_SwitchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Map_Switch-response>)))
  "Returns md5sum for a message object of type '<Map_Switch-response>"
  "6e0c418adb888dd8625f58056e1e3cec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Map_Switch-response)))
  "Returns md5sum for a message object of type 'Map_Switch-response"
  "6e0c418adb888dd8625f58056e1e3cec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Map_Switch-response>)))
  "Returns full string definition for message of type '<Map_Switch-response>"
  (cl:format cl:nil "bool isSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Map_Switch-response)))
  "Returns full string definition for message of type 'Map_Switch-response"
  (cl:format cl:nil "bool isSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Map_Switch-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Map_Switch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Map_Switch-response
    (cl:cons ':isSuccess (isSuccess msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Map_Switch)))
  'Map_Switch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Map_Switch)))
  'Map_Switch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Map_Switch)))
  "Returns string type for a service object of type '<Map_Switch>"
  "custom_msgs/Map_Switch")