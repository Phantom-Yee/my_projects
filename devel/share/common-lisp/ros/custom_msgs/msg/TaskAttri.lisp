; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude TaskAttri.msg.html

(cl:defclass <TaskAttri> (roslisp-msg-protocol:ros-message)
  ((id_task
    :reader id_task
    :initarg :id_task
    :type cl:integer
    :initform 0)
   (task_type
    :reader task_type
    :initarg :task_type
    :type cl:integer
    :initform 0)
   (start_s
    :reader start_s
    :initarg :start_s
    :type cl:float
    :initform 0.0)
   (end_s
    :reader end_s
    :initarg :end_s
    :type cl:float
    :initform 0.0)
   (notes
    :reader notes
    :initarg :notes
    :type cl:string
    :initform ""))
)

(cl:defclass TaskAttri (<TaskAttri>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskAttri>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskAttri)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<TaskAttri> is deprecated: use custom_msgs-msg:TaskAttri instead.")))

(cl:ensure-generic-function 'id_task-val :lambda-list '(m))
(cl:defmethod id_task-val ((m <TaskAttri>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:id_task-val is deprecated.  Use custom_msgs-msg:id_task instead.")
  (id_task m))

(cl:ensure-generic-function 'task_type-val :lambda-list '(m))
(cl:defmethod task_type-val ((m <TaskAttri>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:task_type-val is deprecated.  Use custom_msgs-msg:task_type instead.")
  (task_type m))

(cl:ensure-generic-function 'start_s-val :lambda-list '(m))
(cl:defmethod start_s-val ((m <TaskAttri>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:start_s-val is deprecated.  Use custom_msgs-msg:start_s instead.")
  (start_s m))

(cl:ensure-generic-function 'end_s-val :lambda-list '(m))
(cl:defmethod end_s-val ((m <TaskAttri>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:end_s-val is deprecated.  Use custom_msgs-msg:end_s instead.")
  (end_s m))

(cl:ensure-generic-function 'notes-val :lambda-list '(m))
(cl:defmethod notes-val ((m <TaskAttri>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:notes-val is deprecated.  Use custom_msgs-msg:notes instead.")
  (notes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskAttri>) ostream)
  "Serializes a message object of type '<TaskAttri>"
  (cl:let* ((signed (cl:slot-value msg 'id_task)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'task_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'start_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'end_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'notes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'notes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskAttri>) istream)
  "Deserializes a message object of type '<TaskAttri>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id_task) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'notes) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'notes) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskAttri>)))
  "Returns string type for a message object of type '<TaskAttri>"
  "custom_msgs/TaskAttri")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskAttri)))
  "Returns string type for a message object of type 'TaskAttri"
  "custom_msgs/TaskAttri")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskAttri>)))
  "Returns md5sum for a message object of type '<TaskAttri>"
  "b3c6d3805b1b3d7882624a5d472c2497")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskAttri)))
  "Returns md5sum for a message object of type 'TaskAttri"
  "b3c6d3805b1b3d7882624a5d472c2497")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskAttri>)))
  "Returns full string definition for message of type '<TaskAttri>"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：lsxing~%# 时间 ：2020.12.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：描述任务属性的消息结构~%#----------------------------------------------------------------   ~%~%    int32 id_task       #任务id~%~%    int32 task_type     #任务类型~%~%    float32 start_s     #任务区间~%    float32 end_s       ~%~%    string notes       #任务说明~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskAttri)))
  "Returns full string definition for message of type 'TaskAttri"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：lsxing~%# 时间 ：2020.12.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：描述任务属性的消息结构~%#----------------------------------------------------------------   ~%~%    int32 id_task       #任务id~%~%    int32 task_type     #任务类型~%~%    float32 start_s     #任务区间~%    float32 end_s       ~%~%    string notes       #任务说明~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskAttri>))
  (cl:+ 0
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'notes))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskAttri>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskAttri
    (cl:cons ':id_task (id_task msg))
    (cl:cons ':task_type (task_type msg))
    (cl:cons ':start_s (start_s msg))
    (cl:cons ':end_s (end_s msg))
    (cl:cons ':notes (notes msg))
))
