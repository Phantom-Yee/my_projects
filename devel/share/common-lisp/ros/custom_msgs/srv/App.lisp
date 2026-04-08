; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude App-request.msg.html

(cl:defclass <App-request> (roslisp-msg-protocol:ros-message)
  ((isSend
    :reader isSend
    :initarg :isSend
    :type cl:fixnum
    :initform 0)
   (sendbuf
    :reader sendbuf
    :initarg :sendbuf
    :type cl:string
    :initform ""))
)

(cl:defclass App-request (<App-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <App-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'App-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<App-request> is deprecated: use custom_msgs-srv:App-request instead.")))

(cl:ensure-generic-function 'isSend-val :lambda-list '(m))
(cl:defmethod isSend-val ((m <App-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:isSend-val is deprecated.  Use custom_msgs-srv:isSend instead.")
  (isSend m))

(cl:ensure-generic-function 'sendbuf-val :lambda-list '(m))
(cl:defmethod sendbuf-val ((m <App-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:sendbuf-val is deprecated.  Use custom_msgs-srv:sendbuf instead.")
  (sendbuf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <App-request>) ostream)
  "Serializes a message object of type '<App-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isSend)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sendbuf))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sendbuf))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <App-request>) istream)
  "Deserializes a message object of type '<App-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isSend)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sendbuf) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sendbuf) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<App-request>)))
  "Returns string type for a service object of type '<App-request>"
  "custom_msgs/AppRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'App-request)))
  "Returns string type for a service object of type 'App-request"
  "custom_msgs/AppRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<App-request>)))
  "Returns md5sum for a message object of type '<App-request>"
  "1d44dccf337b7714e82dab40e79d7373")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'App-request)))
  "Returns md5sum for a message object of type 'App-request"
  "1d44dccf337b7714e82dab40e79d7373")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<App-request>)))
  "Returns full string definition for message of type '<App-request>"
  (cl:format cl:nil "#------------------------------~%#接收或者发送给APP~%#------------------------------~%uint8  isSend    # 1:发送 0:接收~%string sendbuf           ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'App-request)))
  "Returns full string definition for message of type 'App-request"
  (cl:format cl:nil "#------------------------------~%#接收或者发送给APP~%#------------------------------~%uint8  isSend    # 1:发送 0:接收~%string sendbuf           ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <App-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'sendbuf))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <App-request>))
  "Converts a ROS message object to a list"
  (cl:list 'App-request
    (cl:cons ':isSend (isSend msg))
    (cl:cons ':sendbuf (sendbuf msg))
))
;//! \htmlinclude App-response.msg.html

(cl:defclass <App-response> (roslisp-msg-protocol:ros-message)
  ((recvbuf
    :reader recvbuf
    :initarg :recvbuf
    :type cl:string
    :initform ""))
)

(cl:defclass App-response (<App-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <App-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'App-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<App-response> is deprecated: use custom_msgs-srv:App-response instead.")))

(cl:ensure-generic-function 'recvbuf-val :lambda-list '(m))
(cl:defmethod recvbuf-val ((m <App-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:recvbuf-val is deprecated.  Use custom_msgs-srv:recvbuf instead.")
  (recvbuf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <App-response>) ostream)
  "Serializes a message object of type '<App-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'recvbuf))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'recvbuf))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <App-response>) istream)
  "Deserializes a message object of type '<App-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recvbuf) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'recvbuf) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<App-response>)))
  "Returns string type for a service object of type '<App-response>"
  "custom_msgs/AppResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'App-response)))
  "Returns string type for a service object of type 'App-response"
  "custom_msgs/AppResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<App-response>)))
  "Returns md5sum for a message object of type '<App-response>"
  "1d44dccf337b7714e82dab40e79d7373")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'App-response)))
  "Returns md5sum for a message object of type 'App-response"
  "1d44dccf337b7714e82dab40e79d7373")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<App-response>)))
  "Returns full string definition for message of type '<App-response>"
  (cl:format cl:nil "string recvbuf            ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'App-response)))
  "Returns full string definition for message of type 'App-response"
  (cl:format cl:nil "string recvbuf            ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <App-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'recvbuf))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <App-response>))
  "Converts a ROS message object to a list"
  (cl:list 'App-response
    (cl:cons ':recvbuf (recvbuf msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'App)))
  'App-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'App)))
  'App-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'App)))
  "Returns string type for a service object of type '<App>"
  "custom_msgs/App")