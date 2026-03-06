// Auto-generated. Do not edit!

// (in-package custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VehicleStat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.VehicleSpeed = null;
      this.GearShiftPositon = null;
      this.ParkSts = null;
      this.ErrorCode = null;
      this.RemainingMile = null;
      this.TolMileage = null;
      this.SAS_SteeringAngle = null;
      this.EMS_EngineSpeed = null;
      this.EMS_EngineThrottlePosition = null;
      this.EMS_AccPedal = null;
      this.EMS_BrakePedalStatus = null;
      this.TCU_GearShiftPositon = null;
      this.VehicleModle = null;
      this.veh_speed = null;
      this.veh_longitude = null;
      this.veh_latitude = null;
      this.Drive_mode = null;
      this.Vehicle_Top_height = null;
    }
    else {
      if (initObj.hasOwnProperty('VehicleSpeed')) {
        this.VehicleSpeed = initObj.VehicleSpeed
      }
      else {
        this.VehicleSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('GearShiftPositon')) {
        this.GearShiftPositon = initObj.GearShiftPositon
      }
      else {
        this.GearShiftPositon = 0;
      }
      if (initObj.hasOwnProperty('ParkSts')) {
        this.ParkSts = initObj.ParkSts
      }
      else {
        this.ParkSts = 0;
      }
      if (initObj.hasOwnProperty('ErrorCode')) {
        this.ErrorCode = initObj.ErrorCode
      }
      else {
        this.ErrorCode = 0;
      }
      if (initObj.hasOwnProperty('RemainingMile')) {
        this.RemainingMile = initObj.RemainingMile
      }
      else {
        this.RemainingMile = 0;
      }
      if (initObj.hasOwnProperty('TolMileage')) {
        this.TolMileage = initObj.TolMileage
      }
      else {
        this.TolMileage = 0.0;
      }
      if (initObj.hasOwnProperty('SAS_SteeringAngle')) {
        this.SAS_SteeringAngle = initObj.SAS_SteeringAngle
      }
      else {
        this.SAS_SteeringAngle = 0.0;
      }
      if (initObj.hasOwnProperty('EMS_EngineSpeed')) {
        this.EMS_EngineSpeed = initObj.EMS_EngineSpeed
      }
      else {
        this.EMS_EngineSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('EMS_EngineThrottlePosition')) {
        this.EMS_EngineThrottlePosition = initObj.EMS_EngineThrottlePosition
      }
      else {
        this.EMS_EngineThrottlePosition = 0.0;
      }
      if (initObj.hasOwnProperty('EMS_AccPedal')) {
        this.EMS_AccPedal = initObj.EMS_AccPedal
      }
      else {
        this.EMS_AccPedal = 0.0;
      }
      if (initObj.hasOwnProperty('EMS_BrakePedalStatus')) {
        this.EMS_BrakePedalStatus = initObj.EMS_BrakePedalStatus
      }
      else {
        this.EMS_BrakePedalStatus = 0;
      }
      if (initObj.hasOwnProperty('TCU_GearShiftPositon')) {
        this.TCU_GearShiftPositon = initObj.TCU_GearShiftPositon
      }
      else {
        this.TCU_GearShiftPositon = 0;
      }
      if (initObj.hasOwnProperty('VehicleModle')) {
        this.VehicleModle = initObj.VehicleModle
      }
      else {
        this.VehicleModle = 0;
      }
      if (initObj.hasOwnProperty('veh_speed')) {
        this.veh_speed = initObj.veh_speed
      }
      else {
        this.veh_speed = 0.0;
      }
      if (initObj.hasOwnProperty('veh_longitude')) {
        this.veh_longitude = initObj.veh_longitude
      }
      else {
        this.veh_longitude = 0;
      }
      if (initObj.hasOwnProperty('veh_latitude')) {
        this.veh_latitude = initObj.veh_latitude
      }
      else {
        this.veh_latitude = 0;
      }
      if (initObj.hasOwnProperty('Drive_mode')) {
        this.Drive_mode = initObj.Drive_mode
      }
      else {
        this.Drive_mode = 0;
      }
      if (initObj.hasOwnProperty('Vehicle_Top_height')) {
        this.Vehicle_Top_height = initObj.Vehicle_Top_height
      }
      else {
        this.Vehicle_Top_height = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleStat
    // Serialize message field [VehicleSpeed]
    bufferOffset = _serializer.float32(obj.VehicleSpeed, buffer, bufferOffset);
    // Serialize message field [GearShiftPositon]
    bufferOffset = _serializer.int8(obj.GearShiftPositon, buffer, bufferOffset);
    // Serialize message field [ParkSts]
    bufferOffset = _serializer.uint8(obj.ParkSts, buffer, bufferOffset);
    // Serialize message field [ErrorCode]
    bufferOffset = _serializer.uint8(obj.ErrorCode, buffer, bufferOffset);
    // Serialize message field [RemainingMile]
    bufferOffset = _serializer.uint16(obj.RemainingMile, buffer, bufferOffset);
    // Serialize message field [TolMileage]
    bufferOffset = _serializer.float32(obj.TolMileage, buffer, bufferOffset);
    // Serialize message field [SAS_SteeringAngle]
    bufferOffset = _serializer.float32(obj.SAS_SteeringAngle, buffer, bufferOffset);
    // Serialize message field [EMS_EngineSpeed]
    bufferOffset = _serializer.float32(obj.EMS_EngineSpeed, buffer, bufferOffset);
    // Serialize message field [EMS_EngineThrottlePosition]
    bufferOffset = _serializer.float32(obj.EMS_EngineThrottlePosition, buffer, bufferOffset);
    // Serialize message field [EMS_AccPedal]
    bufferOffset = _serializer.float32(obj.EMS_AccPedal, buffer, bufferOffset);
    // Serialize message field [EMS_BrakePedalStatus]
    bufferOffset = _serializer.uint8(obj.EMS_BrakePedalStatus, buffer, bufferOffset);
    // Serialize message field [TCU_GearShiftPositon]
    bufferOffset = _serializer.uint8(obj.TCU_GearShiftPositon, buffer, bufferOffset);
    // Serialize message field [VehicleModle]
    bufferOffset = _serializer.uint8(obj.VehicleModle, buffer, bufferOffset);
    // Serialize message field [veh_speed]
    bufferOffset = _serializer.float32(obj.veh_speed, buffer, bufferOffset);
    // Serialize message field [veh_longitude]
    bufferOffset = _serializer.uint8(obj.veh_longitude, buffer, bufferOffset);
    // Serialize message field [veh_latitude]
    bufferOffset = _serializer.uint8(obj.veh_latitude, buffer, bufferOffset);
    // Serialize message field [Drive_mode]
    bufferOffset = _serializer.uint8(obj.Drive_mode, buffer, bufferOffset);
    // Serialize message field [Vehicle_Top_height]
    bufferOffset = _serializer.uint8(obj.Vehicle_Top_height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleStat
    let len;
    let data = new VehicleStat(null);
    // Deserialize message field [VehicleSpeed]
    data.VehicleSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [GearShiftPositon]
    data.GearShiftPositon = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ParkSts]
    data.ParkSts = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ErrorCode]
    data.ErrorCode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RemainingMile]
    data.RemainingMile = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [TolMileage]
    data.TolMileage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [SAS_SteeringAngle]
    data.SAS_SteeringAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [EMS_EngineSpeed]
    data.EMS_EngineSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [EMS_EngineThrottlePosition]
    data.EMS_EngineThrottlePosition = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [EMS_AccPedal]
    data.EMS_AccPedal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [EMS_BrakePedalStatus]
    data.EMS_BrakePedalStatus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [TCU_GearShiftPositon]
    data.TCU_GearShiftPositon = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VehicleModle]
    data.VehicleModle = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [veh_speed]
    data.veh_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [veh_longitude]
    data.veh_longitude = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [veh_latitude]
    data.veh_latitude = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Drive_mode]
    data.Drive_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Vehicle_Top_height]
    data.Vehicle_Top_height = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/VehicleStat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd2bde6cd7946bf2902cdb4da11bc0391';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #---------------------------------------------------------------
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleStat(null);
    if (msg.VehicleSpeed !== undefined) {
      resolved.VehicleSpeed = msg.VehicleSpeed;
    }
    else {
      resolved.VehicleSpeed = 0.0
    }

    if (msg.GearShiftPositon !== undefined) {
      resolved.GearShiftPositon = msg.GearShiftPositon;
    }
    else {
      resolved.GearShiftPositon = 0
    }

    if (msg.ParkSts !== undefined) {
      resolved.ParkSts = msg.ParkSts;
    }
    else {
      resolved.ParkSts = 0
    }

    if (msg.ErrorCode !== undefined) {
      resolved.ErrorCode = msg.ErrorCode;
    }
    else {
      resolved.ErrorCode = 0
    }

    if (msg.RemainingMile !== undefined) {
      resolved.RemainingMile = msg.RemainingMile;
    }
    else {
      resolved.RemainingMile = 0
    }

    if (msg.TolMileage !== undefined) {
      resolved.TolMileage = msg.TolMileage;
    }
    else {
      resolved.TolMileage = 0.0
    }

    if (msg.SAS_SteeringAngle !== undefined) {
      resolved.SAS_SteeringAngle = msg.SAS_SteeringAngle;
    }
    else {
      resolved.SAS_SteeringAngle = 0.0
    }

    if (msg.EMS_EngineSpeed !== undefined) {
      resolved.EMS_EngineSpeed = msg.EMS_EngineSpeed;
    }
    else {
      resolved.EMS_EngineSpeed = 0.0
    }

    if (msg.EMS_EngineThrottlePosition !== undefined) {
      resolved.EMS_EngineThrottlePosition = msg.EMS_EngineThrottlePosition;
    }
    else {
      resolved.EMS_EngineThrottlePosition = 0.0
    }

    if (msg.EMS_AccPedal !== undefined) {
      resolved.EMS_AccPedal = msg.EMS_AccPedal;
    }
    else {
      resolved.EMS_AccPedal = 0.0
    }

    if (msg.EMS_BrakePedalStatus !== undefined) {
      resolved.EMS_BrakePedalStatus = msg.EMS_BrakePedalStatus;
    }
    else {
      resolved.EMS_BrakePedalStatus = 0
    }

    if (msg.TCU_GearShiftPositon !== undefined) {
      resolved.TCU_GearShiftPositon = msg.TCU_GearShiftPositon;
    }
    else {
      resolved.TCU_GearShiftPositon = 0
    }

    if (msg.VehicleModle !== undefined) {
      resolved.VehicleModle = msg.VehicleModle;
    }
    else {
      resolved.VehicleModle = 0
    }

    if (msg.veh_speed !== undefined) {
      resolved.veh_speed = msg.veh_speed;
    }
    else {
      resolved.veh_speed = 0.0
    }

    if (msg.veh_longitude !== undefined) {
      resolved.veh_longitude = msg.veh_longitude;
    }
    else {
      resolved.veh_longitude = 0
    }

    if (msg.veh_latitude !== undefined) {
      resolved.veh_latitude = msg.veh_latitude;
    }
    else {
      resolved.veh_latitude = 0
    }

    if (msg.Drive_mode !== undefined) {
      resolved.Drive_mode = msg.Drive_mode;
    }
    else {
      resolved.Drive_mode = 0
    }

    if (msg.Vehicle_Top_height !== undefined) {
      resolved.Vehicle_Top_height = msg.Vehicle_Top_height;
    }
    else {
      resolved.Vehicle_Top_height = 0
    }

    return resolved;
    }
};

module.exports = VehicleStat;
