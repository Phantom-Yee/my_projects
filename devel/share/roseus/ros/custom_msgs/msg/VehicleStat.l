;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::VehicleStat)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'VehicleStat (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::VEHICLESTAT")
  (make-package "CUSTOM_MSGS::VEHICLESTAT"))

(in-package "ROS")
;;//! \htmlinclude VehicleStat.msg.html


(defclass custom_msgs::VehicleStat
  :super ros::object
  :slots (_VehicleSpeed _GearShiftPositon _ParkSts _ErrorCode _RemainingMile _TolMileage _SAS_SteeringAngle _EMS_EngineSpeed _EMS_EngineThrottlePosition _EMS_AccPedal _EMS_BrakePedalStatus _TCU_GearShiftPositon _VehicleModle _veh_speed _veh_longitude _veh_latitude _Drive_mode _Vehicle_Top_height ))

(defmethod custom_msgs::VehicleStat
  (:init
   (&key
    ((:VehicleSpeed __VehicleSpeed) 0.0)
    ((:GearShiftPositon __GearShiftPositon) 0)
    ((:ParkSts __ParkSts) 0)
    ((:ErrorCode __ErrorCode) 0)
    ((:RemainingMile __RemainingMile) 0)
    ((:TolMileage __TolMileage) 0.0)
    ((:SAS_SteeringAngle __SAS_SteeringAngle) 0.0)
    ((:EMS_EngineSpeed __EMS_EngineSpeed) 0.0)
    ((:EMS_EngineThrottlePosition __EMS_EngineThrottlePosition) 0.0)
    ((:EMS_AccPedal __EMS_AccPedal) 0.0)
    ((:EMS_BrakePedalStatus __EMS_BrakePedalStatus) 0)
    ((:TCU_GearShiftPositon __TCU_GearShiftPositon) 0)
    ((:VehicleModle __VehicleModle) 0)
    ((:veh_speed __veh_speed) 0.0)
    ((:veh_longitude __veh_longitude) 0)
    ((:veh_latitude __veh_latitude) 0)
    ((:Drive_mode __Drive_mode) 0)
    ((:Vehicle_Top_height __Vehicle_Top_height) 0)
    )
   (send-super :init)
   (setq _VehicleSpeed (float __VehicleSpeed))
   (setq _GearShiftPositon (round __GearShiftPositon))
   (setq _ParkSts (round __ParkSts))
   (setq _ErrorCode (round __ErrorCode))
   (setq _RemainingMile (round __RemainingMile))
   (setq _TolMileage (float __TolMileage))
   (setq _SAS_SteeringAngle (float __SAS_SteeringAngle))
   (setq _EMS_EngineSpeed (float __EMS_EngineSpeed))
   (setq _EMS_EngineThrottlePosition (float __EMS_EngineThrottlePosition))
   (setq _EMS_AccPedal (float __EMS_AccPedal))
   (setq _EMS_BrakePedalStatus (round __EMS_BrakePedalStatus))
   (setq _TCU_GearShiftPositon (round __TCU_GearShiftPositon))
   (setq _VehicleModle (round __VehicleModle))
   (setq _veh_speed (float __veh_speed))
   (setq _veh_longitude (round __veh_longitude))
   (setq _veh_latitude (round __veh_latitude))
   (setq _Drive_mode (round __Drive_mode))
   (setq _Vehicle_Top_height (round __Vehicle_Top_height))
   self)
  (:VehicleSpeed
   (&optional __VehicleSpeed)
   (if __VehicleSpeed (setq _VehicleSpeed __VehicleSpeed)) _VehicleSpeed)
  (:GearShiftPositon
   (&optional __GearShiftPositon)
   (if __GearShiftPositon (setq _GearShiftPositon __GearShiftPositon)) _GearShiftPositon)
  (:ParkSts
   (&optional __ParkSts)
   (if __ParkSts (setq _ParkSts __ParkSts)) _ParkSts)
  (:ErrorCode
   (&optional __ErrorCode)
   (if __ErrorCode (setq _ErrorCode __ErrorCode)) _ErrorCode)
  (:RemainingMile
   (&optional __RemainingMile)
   (if __RemainingMile (setq _RemainingMile __RemainingMile)) _RemainingMile)
  (:TolMileage
   (&optional __TolMileage)
   (if __TolMileage (setq _TolMileage __TolMileage)) _TolMileage)
  (:SAS_SteeringAngle
   (&optional __SAS_SteeringAngle)
   (if __SAS_SteeringAngle (setq _SAS_SteeringAngle __SAS_SteeringAngle)) _SAS_SteeringAngle)
  (:EMS_EngineSpeed
   (&optional __EMS_EngineSpeed)
   (if __EMS_EngineSpeed (setq _EMS_EngineSpeed __EMS_EngineSpeed)) _EMS_EngineSpeed)
  (:EMS_EngineThrottlePosition
   (&optional __EMS_EngineThrottlePosition)
   (if __EMS_EngineThrottlePosition (setq _EMS_EngineThrottlePosition __EMS_EngineThrottlePosition)) _EMS_EngineThrottlePosition)
  (:EMS_AccPedal
   (&optional __EMS_AccPedal)
   (if __EMS_AccPedal (setq _EMS_AccPedal __EMS_AccPedal)) _EMS_AccPedal)
  (:EMS_BrakePedalStatus
   (&optional __EMS_BrakePedalStatus)
   (if __EMS_BrakePedalStatus (setq _EMS_BrakePedalStatus __EMS_BrakePedalStatus)) _EMS_BrakePedalStatus)
  (:TCU_GearShiftPositon
   (&optional __TCU_GearShiftPositon)
   (if __TCU_GearShiftPositon (setq _TCU_GearShiftPositon __TCU_GearShiftPositon)) _TCU_GearShiftPositon)
  (:VehicleModle
   (&optional __VehicleModle)
   (if __VehicleModle (setq _VehicleModle __VehicleModle)) _VehicleModle)
  (:veh_speed
   (&optional __veh_speed)
   (if __veh_speed (setq _veh_speed __veh_speed)) _veh_speed)
  (:veh_longitude
   (&optional __veh_longitude)
   (if __veh_longitude (setq _veh_longitude __veh_longitude)) _veh_longitude)
  (:veh_latitude
   (&optional __veh_latitude)
   (if __veh_latitude (setq _veh_latitude __veh_latitude)) _veh_latitude)
  (:Drive_mode
   (&optional __Drive_mode)
   (if __Drive_mode (setq _Drive_mode __Drive_mode)) _Drive_mode)
  (:Vehicle_Top_height
   (&optional __Vehicle_Top_height)
   (if __Vehicle_Top_height (setq _Vehicle_Top_height __Vehicle_Top_height)) _Vehicle_Top_height)
  (:serialization-length
   ()
   (+
    ;; float32 _VehicleSpeed
    4
    ;; int8 _GearShiftPositon
    1
    ;; uint8 _ParkSts
    1
    ;; uint8 _ErrorCode
    1
    ;; uint16 _RemainingMile
    2
    ;; float32 _TolMileage
    4
    ;; float32 _SAS_SteeringAngle
    4
    ;; float32 _EMS_EngineSpeed
    4
    ;; float32 _EMS_EngineThrottlePosition
    4
    ;; float32 _EMS_AccPedal
    4
    ;; uint8 _EMS_BrakePedalStatus
    1
    ;; uint8 _TCU_GearShiftPositon
    1
    ;; uint8 _VehicleModle
    1
    ;; float32 _veh_speed
    4
    ;; uint8 _veh_longitude
    1
    ;; uint8 _veh_latitude
    1
    ;; uint8 _Drive_mode
    1
    ;; uint8 _Vehicle_Top_height
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _VehicleSpeed
       (sys::poke _VehicleSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _GearShiftPositon
       (write-byte _GearShiftPositon s)
     ;; uint8 _ParkSts
       (write-byte _ParkSts s)
     ;; uint8 _ErrorCode
       (write-byte _ErrorCode s)
     ;; uint16 _RemainingMile
       (write-word _RemainingMile s)
     ;; float32 _TolMileage
       (sys::poke _TolMileage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _SAS_SteeringAngle
       (sys::poke _SAS_SteeringAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _EMS_EngineSpeed
       (sys::poke _EMS_EngineSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _EMS_EngineThrottlePosition
       (sys::poke _EMS_EngineThrottlePosition (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _EMS_AccPedal
       (sys::poke _EMS_AccPedal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _EMS_BrakePedalStatus
       (write-byte _EMS_BrakePedalStatus s)
     ;; uint8 _TCU_GearShiftPositon
       (write-byte _TCU_GearShiftPositon s)
     ;; uint8 _VehicleModle
       (write-byte _VehicleModle s)
     ;; float32 _veh_speed
       (sys::poke _veh_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _veh_longitude
       (write-byte _veh_longitude s)
     ;; uint8 _veh_latitude
       (write-byte _veh_latitude s)
     ;; uint8 _Drive_mode
       (write-byte _Drive_mode s)
     ;; uint8 _Vehicle_Top_height
       (write-byte _Vehicle_Top_height s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _VehicleSpeed
     (setq _VehicleSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _GearShiftPositon
     (setq _GearShiftPositon (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _GearShiftPositon 127) (setq _GearShiftPositon (- _GearShiftPositon 256)))
   ;; uint8 _ParkSts
     (setq _ParkSts (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ErrorCode
     (setq _ErrorCode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _RemainingMile
     (setq _RemainingMile (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _TolMileage
     (setq _TolMileage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _SAS_SteeringAngle
     (setq _SAS_SteeringAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _EMS_EngineSpeed
     (setq _EMS_EngineSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _EMS_EngineThrottlePosition
     (setq _EMS_EngineThrottlePosition (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _EMS_AccPedal
     (setq _EMS_AccPedal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _EMS_BrakePedalStatus
     (setq _EMS_BrakePedalStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _TCU_GearShiftPositon
     (setq _TCU_GearShiftPositon (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _VehicleModle
     (setq _VehicleModle (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _veh_speed
     (setq _veh_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _veh_longitude
     (setq _veh_longitude (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _veh_latitude
     (setq _veh_latitude (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Drive_mode
     (setq _Drive_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Vehicle_Top_height
     (setq _Vehicle_Top_height (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get custom_msgs::VehicleStat :md5sum-) "d2bde6cd7946bf2902cdb4da11bc0391")
(setf (get custom_msgs::VehicleStat :datatype-) "custom_msgs/VehicleStat")
(setf (get custom_msgs::VehicleStat :definition-)
      "#---------------------------------------------------------------
# 作者 ：杨东
# 时间 ：2019.08.12
# 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
# 说明 ：
#----------------------------------------------------------------
float32   VehicleSpeed               #车速，单位km/h
int8      GearShiftPositon           #换挡器位置
uint8     ParkSts                    #驻车状态
#ErrorCode 各位为1代表含义如下：
#    0：不能收到can报文
#    1：VcuError不能进入自动驾驶状态
#    2：横向eps故障
#    3：纵向ebs故障
#    4：
#    5：
#    6：
#    7：
uint8 ErrorCode                      #故障码
uint16 RemainingMile                 #剩余里程计
float32 TolMileage                   #累计里程计

float32 SAS_SteeringAngle               #方向盘转角速度
float32 EMS_EngineSpeed                 #发动机转速
float32 EMS_EngineThrottlePosition      #发动机节气门位置
float32 EMS_AccPedal                    #加速踏板位置
uint8   EMS_BrakePedalStatus            #制动踏板状态
uint8   TCU_GearShiftPositon            #换挡器位置
uint8   VehicleModle                    #车辆状态：自动驾驶or手动驾驶

float32 veh_speed                       #速度，单位km/h
uint8   veh_longitude                   #车辆经度
uint8   veh_latitude                    #车辆纬度
uint8   Drive_mode                      #驾驶模式
uint8   Vehicle_Top_height              #车辆当前上装高度
")



(provide :custom_msgs/VehicleStat "d2bde6cd7946bf2902cdb4da11bc0391")


