; Auto-generated. Do not edit!


(cl:in-package custom_msgs-srv)


;//! \htmlinclude Task-request.msg.html

(cl:defclass <Task-request> (roslisp-msg-protocol:ros-message)
  ((task_type
    :reader task_type
    :initarg :task_type
    :type cl:fixnum
    :initform 0)
   (s_start
    :reader s_start
    :initarg :s_start
    :type cl:float
    :initform 0.0)
   (s_end
    :reader s_end
    :initarg :s_end
    :type cl:float
    :initform 0.0)
   (info
    :reader info
    :initarg :info
    :type cl:float
    :initform 0.0)
   (info_2
    :reader info_2
    :initarg :info_2
    :type cl:float
    :initform 0.0))
)

(cl:defclass Task-request (<Task-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Task-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Task-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<Task-request> is deprecated: use custom_msgs-srv:Task-request instead.")))

(cl:ensure-generic-function 'task_type-val :lambda-list '(m))
(cl:defmethod task_type-val ((m <Task-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:task_type-val is deprecated.  Use custom_msgs-srv:task_type instead.")
  (task_type m))

(cl:ensure-generic-function 's_start-val :lambda-list '(m))
(cl:defmethod s_start-val ((m <Task-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:s_start-val is deprecated.  Use custom_msgs-srv:s_start instead.")
  (s_start m))

(cl:ensure-generic-function 's_end-val :lambda-list '(m))
(cl:defmethod s_end-val ((m <Task-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:s_end-val is deprecated.  Use custom_msgs-srv:s_end instead.")
  (s_end m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <Task-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:info-val is deprecated.  Use custom_msgs-srv:info instead.")
  (info m))

(cl:ensure-generic-function 'info_2-val :lambda-list '(m))
(cl:defmethod info_2-val ((m <Task-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:info_2-val is deprecated.  Use custom_msgs-srv:info_2 instead.")
  (info_2 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Task-request>)))
    "Constants for message type '<Task-request>"
  '((:TASK_CONTROL . 1)
    (:NEWPATHMISSION . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Task-request)))
    "Constants for message type 'Task-request"
  '((:TASK_CONTROL . 1)
    (:NEWPATHMISSION . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Task-request>) ostream)
  "Serializes a message object of type '<Task-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 's_start))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 's_end))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'info_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Task-request>) istream)
  "Deserializes a message object of type '<Task-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's_start) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's_end) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'info) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'info_2) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Task-request>)))
  "Returns string type for a service object of type '<Task-request>"
  "custom_msgs/TaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task-request)))
  "Returns string type for a service object of type 'Task-request"
  "custom_msgs/TaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Task-request>)))
  "Returns md5sum for a message object of type '<Task-request>"
  "bd2e6ee9570673e4c686fc680fef4544")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Task-request)))
  "Returns md5sum for a message object of type 'Task-request"
  "bd2e6ee9570673e4c686fc680fef4544")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Task-request>)))
  "Returns full string definition for message of type '<Task-request>"
  (cl:format cl:nil "#------------------------------~%#任务请求~%#------------------------------~%uint8                   Task_Control        = 1    #农机作业任务~%uint8                   NewPathMission      = 2    #避障任务操作~%~%uint8     task_type      #任务id~%float64   s_start        #任务区间起始~%float64   s_end          #任务区间结束~%float64   info           #任务信息~%float64   info_2         #任务信息2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Task-request)))
  "Returns full string definition for message of type 'Task-request"
  (cl:format cl:nil "#------------------------------~%#任务请求~%#------------------------------~%uint8                   Task_Control        = 1    #农机作业任务~%uint8                   NewPathMission      = 2    #避障任务操作~%~%uint8     task_type      #任务id~%float64   s_start        #任务区间起始~%float64   s_end          #任务区间结束~%float64   info           #任务信息~%float64   info_2         #任务信息2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Task-request>))
  (cl:+ 0
     1
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Task-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Task-request
    (cl:cons ':task_type (task_type msg))
    (cl:cons ':s_start (s_start msg))
    (cl:cons ':s_end (s_end msg))
    (cl:cons ':info (info msg))
    (cl:cons ':info_2 (info_2 msg))
))
;//! \htmlinclude Task-response.msg.html

(cl:defclass <Task-response> (roslisp-msg-protocol:ros-message)
  ((isSuccess
    :reader isSuccess
    :initarg :isSuccess
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Task-response (<Task-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Task-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Task-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-srv:<Task-response> is deprecated: use custom_msgs-srv:Task-response instead.")))

(cl:ensure-generic-function 'isSuccess-val :lambda-list '(m))
(cl:defmethod isSuccess-val ((m <Task-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-srv:isSuccess-val is deprecated.  Use custom_msgs-srv:isSuccess instead.")
  (isSuccess m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Task-response>) ostream)
  "Serializes a message object of type '<Task-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSuccess) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Task-response>) istream)
  "Deserializes a message object of type '<Task-response>"
    (cl:setf (cl:slot-value msg 'isSuccess) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Task-response>)))
  "Returns string type for a service object of type '<Task-response>"
  "custom_msgs/TaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task-response)))
  "Returns string type for a service object of type 'Task-response"
  "custom_msgs/TaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Task-response>)))
  "Returns md5sum for a message object of type '<Task-response>"
  "bd2e6ee9570673e4c686fc680fef4544")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Task-response)))
  "Returns md5sum for a message object of type 'Task-response"
  "bd2e6ee9570673e4c686fc680fef4544")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Task-response>)))
  "Returns full string definition for message of type '<Task-response>"
  (cl:format cl:nil "bool isSuccess~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Task-response)))
  "Returns full string definition for message of type 'Task-response"
  (cl:format cl:nil "bool isSuccess~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Task-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Task-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Task-response
    (cl:cons ':isSuccess (isSuccess msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Task)))
  'Task-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Task)))
  'Task-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task)))
  "Returns string type for a service object of type '<Task>"
  "custom_msgs/Task")