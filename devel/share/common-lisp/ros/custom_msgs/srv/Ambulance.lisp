; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude Ambulance-request.msg.html

(cl:defclass <Ambulance-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Ambulance-request (<Ambulance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ambulance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ambulance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<Ambulance-request> is deprecated: use custom_msgs-srv:Ambulance-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ambulance-request>) ostream)
  "Serializes a message object of type '<Ambulance-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ambulance-request>) istream)
  "Deserializes a message object of type '<Ambulance-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ambulance-request>)))
  "Returns string type for a service object of type '<Ambulance-request>"
  "custom_msgs/AmbulanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ambulance-request)))
  "Returns string type for a service object of type 'Ambulance-request"
  "custom_msgs/AmbulanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ambulance-request>)))
  "Returns md5sum for a message object of type '<Ambulance-request>"
  "d2b9f78e4db8bc60eda8a99bc31095fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ambulance-request)))
  "Returns md5sum for a message object of type 'Ambulance-request"
  "d2b9f78e4db8bc60eda8a99bc31095fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ambulance-request>)))
  "Returns full string definition for message of type '<Ambulance-request>"
  (cl:format cl:nil "#------------------------------~%#救护车请求~%#------------------------------~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ambulance-request)))
  "Returns full string definition for message of type 'Ambulance-request"
  (cl:format cl:nil "#------------------------------~%#救护车请求~%#------------------------------~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ambulance-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ambulance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Ambulance-request
))
;//! \htmlinclude Ambulance-response.msg.html

(cl:defclass <Ambulance-response> (roslisp-msg-protocol:ros-message)
  ((IsAmbulance
    :reader IsAmbulance
    :initarg :IsAmbulance
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Ambulance-response (<Ambulance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ambulance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ambulance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<Ambulance-response> is deprecated: use custom_msgs-srv:Ambulance-response instead.")))

(cl:ensure-generic-function 'IsAmbulance-val :lambda-list '(m))
(cl:defmethod IsAmbulance-val ((m <Ambulance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:IsAmbulance-val is deprecated.  Use custom_msgs-srv:IsAmbulance instead.")
  (IsAmbulance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ambulance-response>) ostream)
  "Serializes a message object of type '<Ambulance-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'IsAmbulance) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ambulance-response>) istream)
  "Deserializes a message object of type '<Ambulance-response>"
    (cl:setf (cl:slot-value msg 'IsAmbulance) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ambulance-response>)))
  "Returns string type for a service object of type '<Ambulance-response>"
  "custom_msgs/AmbulanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ambulance-response)))
  "Returns string type for a service object of type 'Ambulance-response"
  "custom_msgs/AmbulanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ambulance-response>)))
  "Returns md5sum for a message object of type '<Ambulance-response>"
  "d2b9f78e4db8bc60eda8a99bc31095fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ambulance-response)))
  "Returns md5sum for a message object of type 'Ambulance-response"
  "d2b9f78e4db8bc60eda8a99bc31095fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ambulance-response>)))
  "Returns full string definition for message of type '<Ambulance-response>"
  (cl:format cl:nil "bool IsAmbulance          #是否有救护车 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ambulance-response)))
  "Returns full string definition for message of type 'Ambulance-response"
  (cl:format cl:nil "bool IsAmbulance          #是否有救护车 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ambulance-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ambulance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Ambulance-response
    (cl:cons ':IsAmbulance (IsAmbulance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Ambulance)))
  'Ambulance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Ambulance)))
  'Ambulance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ambulance)))
  "Returns string type for a service object of type '<Ambulance>"
  "custom_msgs/Ambulance")