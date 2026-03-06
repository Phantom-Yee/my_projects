; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude Path.msg.html

(cl:defclass <Path> (roslisp-msg-protocol:ros-message)
  ((x_ref
    :reader x_ref
    :initarg :x_ref
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (y_ref
    :reader y_ref
    :initarg :y_ref
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Path (<Path>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Path>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Path)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<Path> is deprecated: use custom_msgs-msg:Path instead.")))

(cl:ensure-generic-function 'x_ref-val :lambda-list '(m))
(cl:defmethod x_ref-val ((m <Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:x_ref-val is deprecated.  Use custom_msgs-msg:x_ref instead.")
  (x_ref m))

(cl:ensure-generic-function 'y_ref-val :lambda-list '(m))
(cl:defmethod y_ref-val ((m <Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:y_ref-val is deprecated.  Use custom_msgs-msg:y_ref instead.")
  (y_ref m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Path>) ostream)
  "Serializes a message object of type '<Path>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'x_ref))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'x_ref))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'y_ref))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'y_ref))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Path>) istream)
  "Deserializes a message object of type '<Path>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'x_ref) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'x_ref)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'y_ref) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'y_ref)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Path>)))
  "Returns string type for a message object of type '<Path>"
  "custom_msgs/Path")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Path)))
  "Returns string type for a message object of type 'Path"
  "custom_msgs/Path")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Path>)))
  "Returns md5sum for a message object of type '<Path>"
  "086c82dabe09cb27a2918dd652bbdfdf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Path)))
  "Returns md5sum for a message object of type 'Path"
  "086c82dabe09cb27a2918dd652bbdfdf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Path>)))
  "Returns full string definition for message of type '<Path>"
  (cl:format cl:nil "#------------------------------~%#路径规划后所得到的路径点（x,y,v）~%#------当前项目中路径点序列长度为30~%#------------------------------~%~%float32[]           x_ref      #路径点的x坐标~%float32[]           y_ref      #路径点的y坐标~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Path)))
  "Returns full string definition for message of type 'Path"
  (cl:format cl:nil "#------------------------------~%#路径规划后所得到的路径点（x,y,v）~%#------当前项目中路径点序列长度为30~%#------------------------------~%~%float32[]           x_ref      #路径点的x坐标~%float32[]           y_ref      #路径点的y坐标~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Path>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'x_ref) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'y_ref) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Path>))
  "Converts a ROS message object to a list"
  (cl:list 'Path
    (cl:cons ':x_ref (x_ref msg))
    (cl:cons ':y_ref (y_ref msg))
))
