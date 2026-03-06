; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude PRNDShiftCmd.msg.html

(cl:defclass <PRNDShiftCmd> (roslisp-msg-protocol:ros-message)
  ((head
    :reader head
    :initarg :head
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (APA_TransPRNDShiftEnable
    :reader APA_TransPRNDShiftEnable
    :initarg :APA_TransPRNDShiftEnable
    :type cl:fixnum
    :initform 0)
   (APA_TransPRNDShiftReqValid
    :reader APA_TransPRNDShiftReqValid
    :initarg :APA_TransPRNDShiftReqValid
    :type cl:fixnum
    :initform 0)
   (APA_TransPRNDShiftRequest
    :reader APA_TransPRNDShiftRequest
    :initarg :APA_TransPRNDShiftRequest
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PRNDShiftCmd (<PRNDShiftCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PRNDShiftCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PRNDShiftCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<PRNDShiftCmd> is deprecated: use custom_msgs-msg:PRNDShiftCmd instead.")))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <PRNDShiftCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:head-val is deprecated.  Use custom_msgs-msg:head instead.")
  (head m))

(cl:ensure-generic-function 'APA_TransPRNDShiftEnable-val :lambda-list '(m))
(cl:defmethod APA_TransPRNDShiftEnable-val ((m <PRNDShiftCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:APA_TransPRNDShiftEnable-val is deprecated.  Use custom_msgs-msg:APA_TransPRNDShiftEnable instead.")
  (APA_TransPRNDShiftEnable m))

(cl:ensure-generic-function 'APA_TransPRNDShiftReqValid-val :lambda-list '(m))
(cl:defmethod APA_TransPRNDShiftReqValid-val ((m <PRNDShiftCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:APA_TransPRNDShiftReqValid-val is deprecated.  Use custom_msgs-msg:APA_TransPRNDShiftReqValid instead.")
  (APA_TransPRNDShiftReqValid m))

(cl:ensure-generic-function 'APA_TransPRNDShiftRequest-val :lambda-list '(m))
(cl:defmethod APA_TransPRNDShiftRequest-val ((m <PRNDShiftCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:APA_TransPRNDShiftRequest-val is deprecated.  Use custom_msgs-msg:APA_TransPRNDShiftRequest instead.")
  (APA_TransPRNDShiftRequest m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PRNDShiftCmd>) ostream)
  "Serializes a message object of type '<PRNDShiftCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'APA_TransPRNDShiftEnable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'APA_TransPRNDShiftReqValid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'APA_TransPRNDShiftRequest)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PRNDShiftCmd>) istream)
  "Deserializes a message object of type '<PRNDShiftCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'APA_TransPRNDShiftEnable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'APA_TransPRNDShiftReqValid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'APA_TransPRNDShiftRequest)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PRNDShiftCmd>)))
  "Returns string type for a message object of type '<PRNDShiftCmd>"
  "custom_msgs/PRNDShiftCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PRNDShiftCmd)))
  "Returns string type for a message object of type 'PRNDShiftCmd"
  "custom_msgs/PRNDShiftCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PRNDShiftCmd>)))
  "Returns md5sum for a message object of type '<PRNDShiftCmd>"
  "1c04489b61cb0ba49e76093963fa7801")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PRNDShiftCmd)))
  "Returns md5sum for a message object of type 'PRNDShiftCmd"
  "1c04489b61cb0ba49e76093963fa7801")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PRNDShiftCmd>)))
  "Returns full string definition for message of type '<PRNDShiftCmd>"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%std_msgs/Header head~%~%uint8 APA_TransPRNDShiftEnable         #->>档位：请求换挡可控 0x1 disable able 0x1 Enable   ACM_APA Request Enable = 0x1:Control enabled~%uint8 APA_TransPRNDShiftReqValid       #->>档位：换挡使能   0x0 = Invalid 0x1=Valid~%uint8 APA_TransPRNDShiftRequest        #->>档位：换挡档位值 0x0=NoRequest;or 0x1=P ;or 0x2= R ; 0x3=N 0x4=D 0x5 :invalid~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PRNDShiftCmd)))
  "Returns full string definition for message of type 'PRNDShiftCmd"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%~%std_msgs/Header head~%~%uint8 APA_TransPRNDShiftEnable         #->>档位：请求换挡可控 0x1 disable able 0x1 Enable   ACM_APA Request Enable = 0x1:Control enabled~%uint8 APA_TransPRNDShiftReqValid       #->>档位：换挡使能   0x0 = Invalid 0x1=Valid~%uint8 APA_TransPRNDShiftRequest        #->>档位：换挡档位值 0x0=NoRequest;or 0x1=P ;or 0x2= R ; 0x3=N 0x4=D 0x5 :invalid~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PRNDShiftCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PRNDShiftCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'PRNDShiftCmd
    (cl:cons ':head (head msg))
    (cl:cons ':APA_TransPRNDShiftEnable (APA_TransPRNDShiftEnable msg))
    (cl:cons ':APA_TransPRNDShiftReqValid (APA_TransPRNDShiftReqValid msg))
    (cl:cons ':APA_TransPRNDShiftRequest (APA_TransPRNDShiftRequest msg))
))
