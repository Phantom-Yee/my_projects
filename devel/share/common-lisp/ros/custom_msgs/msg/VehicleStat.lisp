; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude VehicleStat.msg.html

(cl:defclass <VehicleStat> (roslisp-msg-protocol:ros-message)
  ((VehicleSpeed
    :reader VehicleSpeed
    :initarg :VehicleSpeed
    :type cl:float
    :initform 0.0)
   (GearShiftPositon
    :reader GearShiftPositon
    :initarg :GearShiftPositon
    :type cl:fixnum
    :initform 0)
   (ParkSts
    :reader ParkSts
    :initarg :ParkSts
    :type cl:fixnum
    :initform 0)
   (ErrorCode
    :reader ErrorCode
    :initarg :ErrorCode
    :type cl:fixnum
    :initform 0)
   (RemainingMile
    :reader RemainingMile
    :initarg :RemainingMile
    :type cl:fixnum
    :initform 0)
   (TolMileage
    :reader TolMileage
    :initarg :TolMileage
    :type cl:float
    :initform 0.0)
   (SAS_SteeringAngle
    :reader SAS_SteeringAngle
    :initarg :SAS_SteeringAngle
    :type cl:float
    :initform 0.0)
   (EMS_EngineSpeed
    :reader EMS_EngineSpeed
    :initarg :EMS_EngineSpeed
    :type cl:float
    :initform 0.0)
   (EMS_EngineThrottlePosition
    :reader EMS_EngineThrottlePosition
    :initarg :EMS_EngineThrottlePosition
    :type cl:float
    :initform 0.0)
   (EMS_AccPedal
    :reader EMS_AccPedal
    :initarg :EMS_AccPedal
    :type cl:float
    :initform 0.0)
   (EMS_BrakePedalStatus
    :reader EMS_BrakePedalStatus
    :initarg :EMS_BrakePedalStatus
    :type cl:fixnum
    :initform 0)
   (TCU_GearShiftPositon
    :reader TCU_GearShiftPositon
    :initarg :TCU_GearShiftPositon
    :type cl:fixnum
    :initform 0)
   (VehicleModle
    :reader VehicleModle
    :initarg :VehicleModle
    :type cl:fixnum
    :initform 0)
   (veh_speed
    :reader veh_speed
    :initarg :veh_speed
    :type cl:float
    :initform 0.0)
   (veh_longitude
    :reader veh_longitude
    :initarg :veh_longitude
    :type cl:fixnum
    :initform 0)
   (veh_latitude
    :reader veh_latitude
    :initarg :veh_latitude
    :type cl:fixnum
    :initform 0)
   (Drive_mode
    :reader Drive_mode
    :initarg :Drive_mode
    :type cl:fixnum
    :initform 0)
   (Vehicle_Top_height
    :reader Vehicle_Top_height
    :initarg :Vehicle_Top_height
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleStat (<VehicleStat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleStat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleStat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<VehicleStat> is deprecated: use custom_msgs-msg:VehicleStat instead.")))

(cl:ensure-generic-function 'VehicleSpeed-val :lambda-list '(m))
(cl:defmethod VehicleSpeed-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:VehicleSpeed-val is deprecated.  Use custom_msgs-msg:VehicleSpeed instead.")
  (VehicleSpeed m))

(cl:ensure-generic-function 'GearShiftPositon-val :lambda-list '(m))
(cl:defmethod GearShiftPositon-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:GearShiftPositon-val is deprecated.  Use custom_msgs-msg:GearShiftPositon instead.")
  (GearShiftPositon m))

(cl:ensure-generic-function 'ParkSts-val :lambda-list '(m))
(cl:defmethod ParkSts-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:ParkSts-val is deprecated.  Use custom_msgs-msg:ParkSts instead.")
  (ParkSts m))

(cl:ensure-generic-function 'ErrorCode-val :lambda-list '(m))
(cl:defmethod ErrorCode-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:ErrorCode-val is deprecated.  Use custom_msgs-msg:ErrorCode instead.")
  (ErrorCode m))

(cl:ensure-generic-function 'RemainingMile-val :lambda-list '(m))
(cl:defmethod RemainingMile-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:RemainingMile-val is deprecated.  Use custom_msgs-msg:RemainingMile instead.")
  (RemainingMile m))

(cl:ensure-generic-function 'TolMileage-val :lambda-list '(m))
(cl:defmethod TolMileage-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:TolMileage-val is deprecated.  Use custom_msgs-msg:TolMileage instead.")
  (TolMileage m))

(cl:ensure-generic-function 'SAS_SteeringAngle-val :lambda-list '(m))
(cl:defmethod SAS_SteeringAngle-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:SAS_SteeringAngle-val is deprecated.  Use custom_msgs-msg:SAS_SteeringAngle instead.")
  (SAS_SteeringAngle m))

(cl:ensure-generic-function 'EMS_EngineSpeed-val :lambda-list '(m))
(cl:defmethod EMS_EngineSpeed-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:EMS_EngineSpeed-val is deprecated.  Use custom_msgs-msg:EMS_EngineSpeed instead.")
  (EMS_EngineSpeed m))

(cl:ensure-generic-function 'EMS_EngineThrottlePosition-val :lambda-list '(m))
(cl:defmethod EMS_EngineThrottlePosition-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:EMS_EngineThrottlePosition-val is deprecated.  Use custom_msgs-msg:EMS_EngineThrottlePosition instead.")
  (EMS_EngineThrottlePosition m))

(cl:ensure-generic-function 'EMS_AccPedal-val :lambda-list '(m))
(cl:defmethod EMS_AccPedal-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:EMS_AccPedal-val is deprecated.  Use custom_msgs-msg:EMS_AccPedal instead.")
  (EMS_AccPedal m))

(cl:ensure-generic-function 'EMS_BrakePedalStatus-val :lambda-list '(m))
(cl:defmethod EMS_BrakePedalStatus-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:EMS_BrakePedalStatus-val is deprecated.  Use custom_msgs-msg:EMS_BrakePedalStatus instead.")
  (EMS_BrakePedalStatus m))

(cl:ensure-generic-function 'TCU_GearShiftPositon-val :lambda-list '(m))
(cl:defmethod TCU_GearShiftPositon-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:TCU_GearShiftPositon-val is deprecated.  Use custom_msgs-msg:TCU_GearShiftPositon instead.")
  (TCU_GearShiftPositon m))

(cl:ensure-generic-function 'VehicleModle-val :lambda-list '(m))
(cl:defmethod VehicleModle-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:VehicleModle-val is deprecated.  Use custom_msgs-msg:VehicleModle instead.")
  (VehicleModle m))

(cl:ensure-generic-function 'veh_speed-val :lambda-list '(m))
(cl:defmethod veh_speed-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:veh_speed-val is deprecated.  Use custom_msgs-msg:veh_speed instead.")
  (veh_speed m))

(cl:ensure-generic-function 'veh_longitude-val :lambda-list '(m))
(cl:defmethod veh_longitude-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:veh_longitude-val is deprecated.  Use custom_msgs-msg:veh_longitude instead.")
  (veh_longitude m))

(cl:ensure-generic-function 'veh_latitude-val :lambda-list '(m))
(cl:defmethod veh_latitude-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:veh_latitude-val is deprecated.  Use custom_msgs-msg:veh_latitude instead.")
  (veh_latitude m))

(cl:ensure-generic-function 'Drive_mode-val :lambda-list '(m))
(cl:defmethod Drive_mode-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:Drive_mode-val is deprecated.  Use custom_msgs-msg:Drive_mode instead.")
  (Drive_mode m))

(cl:ensure-generic-function 'Vehicle_Top_height-val :lambda-list '(m))
(cl:defmethod Vehicle_Top_height-val ((m <VehicleStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:Vehicle_Top_height-val is deprecated.  Use custom_msgs-msg:Vehicle_Top_height instead.")
  (Vehicle_Top_height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleStat>) ostream)
  "Serializes a message object of type '<VehicleStat>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'VehicleSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'GearShiftPositon)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ParkSts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ErrorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RemainingMile)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RemainingMile)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TolMileage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'SAS_SteeringAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'EMS_EngineSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'EMS_EngineThrottlePosition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'EMS_AccPedal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EMS_BrakePedalStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TCU_GearShiftPositon)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VehicleModle)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'veh_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'veh_longitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'veh_latitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Drive_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Vehicle_Top_height)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleStat>) istream)
  "Deserializes a message object of type '<VehicleStat>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VehicleSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'GearShiftPositon) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ParkSts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ErrorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RemainingMile)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RemainingMile)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TolMileage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SAS_SteeringAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'EMS_EngineSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'EMS_EngineThrottlePosition) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'EMS_AccPedal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EMS_BrakePedalStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TCU_GearShiftPositon)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VehicleModle)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'veh_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'veh_longitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'veh_latitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Drive_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Vehicle_Top_height)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleStat>)))
  "Returns string type for a message object of type '<VehicleStat>"
  "custom_msgs/VehicleStat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleStat)))
  "Returns string type for a message object of type 'VehicleStat"
  "custom_msgs/VehicleStat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleStat>)))
  "Returns md5sum for a message object of type '<VehicleStat>"
  "d2bde6cd7946bf2902cdb4da11bc0391")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleStat)))
  "Returns md5sum for a message object of type 'VehicleStat"
  "d2bde6cd7946bf2902cdb4da11bc0391")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleStat>)))
  "Returns full string definition for message of type '<VehicleStat>"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%float32   VehicleSpeed               #车速，单位km/h~%int8      GearShiftPositon           #换挡器位置~%uint8     ParkSts                    #驻车状态~%#ErrorCode 各位为1代表含义如下：~%#    0：不能收到can报文~%#    1：VcuError不能进入自动驾驶状态~%#    2：横向eps故障~%#    3：纵向ebs故障~%#    4：~%#    5：~%#    6：~%#    7：~%uint8 ErrorCode                      #故障码~%uint16 RemainingMile                 #剩余里程计~%float32 TolMileage                   #累计里程计~%~%float32 SAS_SteeringAngle               #方向盘转角速度~%float32 EMS_EngineSpeed                 #发动机转速~%float32 EMS_EngineThrottlePosition      #发动机节气门位置~%float32 EMS_AccPedal                    #加速踏板位置~%uint8   EMS_BrakePedalStatus            #制动踏板状态~%uint8   TCU_GearShiftPositon            #换挡器位置~%uint8   VehicleModle                    #车辆状态：自动驾驶or手动驾驶~%~%float32 veh_speed                       #速度，单位km/h~%uint8   veh_longitude                   #车辆经度~%uint8   veh_latitude                    #车辆纬度~%uint8   Drive_mode                      #驾驶模式~%uint8   Vehicle_Top_height              #车辆当前上装高度~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleStat)))
  "Returns full string definition for message of type 'VehicleStat"
  (cl:format cl:nil "#---------------------------------------------------------------~%# 作者 ：杨东~%# 时间 ：2019.08.12~%# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队~%# 说明 ：~%#----------------------------------------------------------------~%float32   VehicleSpeed               #车速，单位km/h~%int8      GearShiftPositon           #换挡器位置~%uint8     ParkSts                    #驻车状态~%#ErrorCode 各位为1代表含义如下：~%#    0：不能收到can报文~%#    1：VcuError不能进入自动驾驶状态~%#    2：横向eps故障~%#    3：纵向ebs故障~%#    4：~%#    5：~%#    6：~%#    7：~%uint8 ErrorCode                      #故障码~%uint16 RemainingMile                 #剩余里程计~%float32 TolMileage                   #累计里程计~%~%float32 SAS_SteeringAngle               #方向盘转角速度~%float32 EMS_EngineSpeed                 #发动机转速~%float32 EMS_EngineThrottlePosition      #发动机节气门位置~%float32 EMS_AccPedal                    #加速踏板位置~%uint8   EMS_BrakePedalStatus            #制动踏板状态~%uint8   TCU_GearShiftPositon            #换挡器位置~%uint8   VehicleModle                    #车辆状态：自动驾驶or手动驾驶~%~%float32 veh_speed                       #速度，单位km/h~%uint8   veh_longitude                   #车辆经度~%uint8   veh_latitude                    #车辆纬度~%uint8   Drive_mode                      #驾驶模式~%uint8   Vehicle_Top_height              #车辆当前上装高度~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleStat>))
  (cl:+ 0
     4
     1
     1
     1
     2
     4
     4
     4
     4
     4
     1
     1
     1
     4
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleStat>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleStat
    (cl:cons ':VehicleSpeed (VehicleSpeed msg))
    (cl:cons ':GearShiftPositon (GearShiftPositon msg))
    (cl:cons ':ParkSts (ParkSts msg))
    (cl:cons ':ErrorCode (ErrorCode msg))
    (cl:cons ':RemainingMile (RemainingMile msg))
    (cl:cons ':TolMileage (TolMileage msg))
    (cl:cons ':SAS_SteeringAngle (SAS_SteeringAngle msg))
    (cl:cons ':EMS_EngineSpeed (EMS_EngineSpeed msg))
    (cl:cons ':EMS_EngineThrottlePosition (EMS_EngineThrottlePosition msg))
    (cl:cons ':EMS_AccPedal (EMS_AccPedal msg))
    (cl:cons ':EMS_BrakePedalStatus (EMS_BrakePedalStatus msg))
    (cl:cons ':TCU_GearShiftPositon (TCU_GearShiftPositon msg))
    (cl:cons ':VehicleModle (VehicleModle msg))
    (cl:cons ':veh_speed (veh_speed msg))
    (cl:cons ':veh_longitude (veh_longitude msg))
    (cl:cons ':veh_latitude (veh_latitude msg))
    (cl:cons ':Drive_mode (Drive_mode msg))
    (cl:cons ':Vehicle_Top_height (Vehicle_Top_height msg))
))
