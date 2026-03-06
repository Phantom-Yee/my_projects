; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude LaneLineArray.msg.html

(cl:defclass <LaneLineArray> (roslisp-msg-protocol:ros-message)
  ((lines
    :reader lines
    :initarg :lines
    :type (cl:vector custom_msgs-msg:LaneLine)
   :initform (cl:make-array 0 :element-type 'custom_msgs-msg:LaneLine :initial-element (cl:make-instance 'custom_msgs-msg:LaneLine))))
)

(cl:defclass LaneLineArray (<LaneLineArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneLineArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneLineArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<LaneLineArray> is deprecated: use custom_msgs-msg:LaneLineArray instead.")))

(cl:ensure-generic-function 'lines-val :lambda-list '(m))
(cl:defmethod lines-val ((m <LaneLineArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:lines-val is deprecated.  Use custom_msgs-msg:lines instead.")
  (lines m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneLineArray>) ostream)
  "Serializes a message object of type '<LaneLineArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lines))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lines))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneLineArray>) istream)
  "Deserializes a message object of type '<LaneLineArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lines) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lines)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'custom_msgs-msg:LaneLine))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneLineArray>)))
  "Returns string type for a message object of type '<LaneLineArray>"
  "custom_msgs/LaneLineArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneLineArray)))
  "Returns string type for a message object of type 'LaneLineArray"
  "custom_msgs/LaneLineArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneLineArray>)))
  "Returns md5sum for a message object of type '<LaneLineArray>"
  "b311b16e049dce662db6f00b38186809")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneLineArray)))
  "Returns md5sum for a message object of type 'LaneLineArray"
  "b311b16e049dce662db6f00b38186809")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneLineArray>)))
  "Returns full string definition for message of type '<LaneLineArray>"
  (cl:format cl:nil "#------------------------------~%#车道线序列~%#------当前项目中车道线点序列长度为30~%#------------------------------~%~%LaneLine[]         lines~%~%================================================================================~%MSG: custom_msgs/LaneLine~%#------------------------------~%#车道线~%#------当前项目中车道线点序列长度为30~%#------geometry_msgs/Point类型是（x,y,z),目前只填充x,y忽略z~%#------------------------------~%uint32                         id~%uint8                          type~%float64[]                      x~%float64[]                      y~%float64[]                      s~%~%geometry_msgs/Point[]          points~%uint8                          current_lane_num~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneLineArray)))
  "Returns full string definition for message of type 'LaneLineArray"
  (cl:format cl:nil "#------------------------------~%#车道线序列~%#------当前项目中车道线点序列长度为30~%#------------------------------~%~%LaneLine[]         lines~%~%================================================================================~%MSG: custom_msgs/LaneLine~%#------------------------------~%#车道线~%#------当前项目中车道线点序列长度为30~%#------geometry_msgs/Point类型是（x,y,z),目前只填充x,y忽略z~%#------------------------------~%uint32                         id~%uint8                          type~%float64[]                      x~%float64[]                      y~%float64[]                      s~%~%geometry_msgs/Point[]          points~%uint8                          current_lane_num~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneLineArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lines) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneLineArray>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneLineArray
    (cl:cons ':lines (lines msg))
))
