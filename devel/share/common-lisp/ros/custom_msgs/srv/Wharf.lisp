; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude Wharf-request.msg.html

(cl:defclass <Wharf-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Wharf-request (<Wharf-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wharf-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wharf-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<Wharf-request> is deprecated: use custom_msgs-srv:Wharf-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <Wharf-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:enable-val is deprecated.  Use custom_msgs-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wharf-request>) ostream)
  "Serializes a message object of type '<Wharf-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wharf-request>) istream)
  "Deserializes a message object of type '<Wharf-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wharf-request>)))
  "Returns string type for a service object of type '<Wharf-request>"
  "custom_msgs/WharfRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wharf-request)))
  "Returns string type for a service object of type 'Wharf-request"
  "custom_msgs/WharfRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wharf-request>)))
  "Returns md5sum for a message object of type '<Wharf-request>"
  "beeb1d84fce657cfd73dfadb6e25adb9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wharf-request)))
  "Returns md5sum for a message object of type 'Wharf-request"
  "beeb1d84fce657cfd73dfadb6e25adb9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wharf-request>)))
  "Returns full string definition for message of type '<Wharf-request>"
  (cl:format cl:nil "#------------------------------~%#lidar码头检测~%#------------------------------~%bool enable          ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wharf-request)))
  "Returns full string definition for message of type 'Wharf-request"
  (cl:format cl:nil "#------------------------------~%#lidar码头检测~%#------------------------------~%bool enable          ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wharf-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wharf-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Wharf-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude Wharf-response.msg.html

(cl:defclass <Wharf-response> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass Wharf-response (<Wharf-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wharf-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wharf-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<Wharf-response> is deprecated: use custom_msgs-srv:Wharf-response instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <Wharf-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:distance-val is deprecated.  Use custom_msgs-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wharf-response>) ostream)
  "Serializes a message object of type '<Wharf-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wharf-response>) istream)
  "Deserializes a message object of type '<Wharf-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wharf-response>)))
  "Returns string type for a service object of type '<Wharf-response>"
  "custom_msgs/WharfResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wharf-response)))
  "Returns string type for a service object of type 'Wharf-response"
  "custom_msgs/WharfResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wharf-response>)))
  "Returns md5sum for a message object of type '<Wharf-response>"
  "beeb1d84fce657cfd73dfadb6e25adb9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wharf-response)))
  "Returns md5sum for a message object of type 'Wharf-response"
  "beeb1d84fce657cfd73dfadb6e25adb9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wharf-response>)))
  "Returns full string definition for message of type '<Wharf-response>"
  (cl:format cl:nil "float32 distance      #距离码头距离~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wharf-response)))
  "Returns full string definition for message of type 'Wharf-response"
  (cl:format cl:nil "float32 distance      #距离码头距离~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wharf-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wharf-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Wharf-response
    (cl:cons ':distance (distance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Wharf)))
  'Wharf-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Wharf)))
  'Wharf-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wharf)))
  "Returns string type for a service object of type '<Wharf>"
  "custom_msgs/Wharf")