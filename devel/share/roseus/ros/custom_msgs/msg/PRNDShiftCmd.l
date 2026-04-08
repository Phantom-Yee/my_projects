;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::PRNDShiftCmd)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'PRNDShiftCmd (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::PRNDSHIFTCMD")
  (make-package "CUSTOM_MSGS::PRNDSHIFTCMD"))

(in-package "ROS")
;;//! \htmlinclude PRNDShiftCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_msgs::PRNDShiftCmd
  :super ros::object
  :slots (_head _APA_TransPRNDShiftEnable _APA_TransPRNDShiftReqValid _APA_TransPRNDShiftRequest ))

(defmethod custom_msgs::PRNDShiftCmd
  (:init
   (&key
    ((:head __head) (instance std_msgs::Header :init))
    ((:APA_TransPRNDShiftEnable __APA_TransPRNDShiftEnable) 0)
    ((:APA_TransPRNDShiftReqValid __APA_TransPRNDShiftReqValid) 0)
    ((:APA_TransPRNDShiftRequest __APA_TransPRNDShiftRequest) 0)
    )
   (send-super :init)
   (setq _head __head)
   (setq _APA_TransPRNDShiftEnable (round __APA_TransPRNDShiftEnable))
   (setq _APA_TransPRNDShiftReqValid (round __APA_TransPRNDShiftReqValid))
   (setq _APA_TransPRNDShiftRequest (round __APA_TransPRNDShiftRequest))
   self)
  (:head
   (&rest __head)
   (if (keywordp (car __head))
       (send* _head __head)
     (progn
       (if __head (setq _head (car __head)))
       _head)))
  (:APA_TransPRNDShiftEnable
   (&optional __APA_TransPRNDShiftEnable)
   (if __APA_TransPRNDShiftEnable (setq _APA_TransPRNDShiftEnable __APA_TransPRNDShiftEnable)) _APA_TransPRNDShiftEnable)
  (:APA_TransPRNDShiftReqValid
   (&optional __APA_TransPRNDShiftReqValid)
   (if __APA_TransPRNDShiftReqValid (setq _APA_TransPRNDShiftReqValid __APA_TransPRNDShiftReqValid)) _APA_TransPRNDShiftReqValid)
  (:APA_TransPRNDShiftRequest
   (&optional __APA_TransPRNDShiftRequest)
   (if __APA_TransPRNDShiftRequest (setq _APA_TransPRNDShiftRequest __APA_TransPRNDShiftRequest)) _APA_TransPRNDShiftRequest)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _head
    (send _head :serialization-length)
    ;; uint8 _APA_TransPRNDShiftEnable
    1
    ;; uint8 _APA_TransPRNDShiftReqValid
    1
    ;; uint8 _APA_TransPRNDShiftRequest
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _head
       (send _head :serialize s)
     ;; uint8 _APA_TransPRNDShiftEnable
       (write-byte _APA_TransPRNDShiftEnable s)
     ;; uint8 _APA_TransPRNDShiftReqValid
       (write-byte _APA_TransPRNDShiftReqValid s)
     ;; uint8 _APA_TransPRNDShiftRequest
       (write-byte _APA_TransPRNDShiftRequest s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _head
     (send _head :deserialize buf ptr-) (incf ptr- (send _head :serialization-length))
   ;; uint8 _APA_TransPRNDShiftEnable
     (setq _APA_TransPRNDShiftEnable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _APA_TransPRNDShiftReqValid
     (setq _APA_TransPRNDShiftReqValid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _APA_TransPRNDShiftRequest
     (setq _APA_TransPRNDShiftRequest (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get custom_msgs::PRNDShiftCmd :md5sum-) "1c04489b61cb0ba49e76093963fa7801")
(setf (get custom_msgs::PRNDShiftCmd :datatype-) "custom_msgs/PRNDShiftCmd")
(setf (get custom_msgs::PRNDShiftCmd :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#----------------------------------------------------------------

std_msgs/Header head

uint8 APA_TransPRNDShiftEnable         #->>档位：请求换挡可控 0x1 disable able 0x1 Enable   ACM_APA Request Enable = 0x1:Control enabled
uint8 APA_TransPRNDShiftReqValid       #->>档位：换挡使能   0x0 = Invalid 0x1=Valid
uint8 APA_TransPRNDShiftRequest        #->>档位：换挡档位值 0x0=NoRequest;or 0x1=P ;or 0x2= R ; 0x3=N 0x4=D 0x5 :invalid



================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :custom_msgs/PRNDShiftCmd "1c04489b61cb0ba49e76093963fa7801")


