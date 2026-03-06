// Auto-generated. Do not edit!

// (in-package custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NaviData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head = null;
      this.pitch = null;
      this.roll = null;
      this.heading = null;
      this.longitude = null;
      this.latitude = null;
      this.altitude = null;
      this.speed2d = null;
      this.Ve = null;
      this.Vn = null;
      this.Vu = null;
      this.pose_type = null;
      this.gpsTime = null;
      this.INS_Status = null;
      this.Lat_vari = null;
      this.Lon_vari = null;
    }
    else {
      if (initObj.hasOwnProperty('head')) {
        this.head = initObj.head
      }
      else {
        this.head = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('speed2d')) {
        this.speed2d = initObj.speed2d
      }
      else {
        this.speed2d = 0.0;
      }
      if (initObj.hasOwnProperty('Ve')) {
        this.Ve = initObj.Ve
      }
      else {
        this.Ve = 0.0;
      }
      if (initObj.hasOwnProperty('Vn')) {
        this.Vn = initObj.Vn
      }
      else {
        this.Vn = 0.0;
      }
      if (initObj.hasOwnProperty('Vu')) {
        this.Vu = initObj.Vu
      }
      else {
        this.Vu = 0.0;
      }
      if (initObj.hasOwnProperty('pose_type')) {
        this.pose_type = initObj.pose_type
      }
      else {
        this.pose_type = 0;
      }
      if (initObj.hasOwnProperty('gpsTime')) {
        this.gpsTime = initObj.gpsTime
      }
      else {
        this.gpsTime = 0.0;
      }
      if (initObj.hasOwnProperty('INS_Status')) {
        this.INS_Status = initObj.INS_Status
      }
      else {
        this.INS_Status = 0;
      }
      if (initObj.hasOwnProperty('Lat_vari')) {
        this.Lat_vari = initObj.Lat_vari
      }
      else {
        this.Lat_vari = 0.0;
      }
      if (initObj.hasOwnProperty('Lon_vari')) {
        this.Lon_vari = initObj.Lon_vari
      }
      else {
        this.Lon_vari = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NaviData
    // Serialize message field [head]
    bufferOffset = std_msgs.msg.Header.serialize(obj.head, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float32(obj.roll, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float32(obj.heading, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [speed2d]
    bufferOffset = _serializer.float32(obj.speed2d, buffer, bufferOffset);
    // Serialize message field [Ve]
    bufferOffset = _serializer.float32(obj.Ve, buffer, bufferOffset);
    // Serialize message field [Vn]
    bufferOffset = _serializer.float32(obj.Vn, buffer, bufferOffset);
    // Serialize message field [Vu]
    bufferOffset = _serializer.float32(obj.Vu, buffer, bufferOffset);
    // Serialize message field [pose_type]
    bufferOffset = _serializer.int32(obj.pose_type, buffer, bufferOffset);
    // Serialize message field [gpsTime]
    bufferOffset = _serializer.float64(obj.gpsTime, buffer, bufferOffset);
    // Serialize message field [INS_Status]
    bufferOffset = _serializer.int32(obj.INS_Status, buffer, bufferOffset);
    // Serialize message field [Lat_vari]
    bufferOffset = _serializer.float32(obj.Lat_vari, buffer, bufferOffset);
    // Serialize message field [Lon_vari]
    bufferOffset = _serializer.float32(obj.Lon_vari, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NaviData
    let len;
    let data = new NaviData(null);
    // Deserialize message field [head]
    data.head = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed2d]
    data.speed2d = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Ve]
    data.Ve = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Vn]
    data.Vn = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Vu]
    data.Vu = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pose_type]
    data.pose_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gpsTime]
    data.gpsTime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [INS_Status]
    data.INS_Status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Lat_vari]
    data.Lat_vari = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Lon_vari]
    data.Lon_vari = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.head);
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/NaviData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7bf1fc8c7c8a4b0662c1e912fa5e0615';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #---------------------------------------------------------------------------------------------
    #导航信息
    #来源于GNSS，INS设备
    
    # 50 NARROW_INT Integer narrow-lane ambiguity solution
    # 56 INS_RTKFIXED INS RTK fixed ambiguities solution
    # 51 RTK_DIRECT_INS RTK status where the RTK filter is directly initialized from the INS filter
    # 55 INS_RTKFLOAT INS RTK floating point ambiguities solution
    # 52 INS_SBAS INS calculated position corrected for the antenna
    # 54 INS_PSRDIFF INS pseudorange differential solution
    # 53 INS_PSRSP INS pseudorange single point solution – no DGPS corrections
    #-----------------------------------------------------------------------------------------------
    
    
    std_msgs/Header head
    
    float32 pitch          #俯仰角
    float32 roll           #翻滚角
    float32 heading        #航向角
    
    float64 longitude      #经度
    float64 latitude       #纬度
    float64 altitude       #海拔
    
    float32 speed2d        #车辆速度
    # ----------------->
    float32 Ve
    
    float32 Vn
    
    float32 Vu
    
    # <-----------------
    
    int32   pose_type      #定位状态
    float64 gpsTime        #
    
    int32 INS_Status       #解算状态
    float32 Lat_vari       #纬度标准差
    float32 Lon_vari       #经度标准差
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NaviData(null);
    if (msg.head !== undefined) {
      resolved.head = std_msgs.msg.Header.Resolve(msg.head)
    }
    else {
      resolved.head = new std_msgs.msg.Header()
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.speed2d !== undefined) {
      resolved.speed2d = msg.speed2d;
    }
    else {
      resolved.speed2d = 0.0
    }

    if (msg.Ve !== undefined) {
      resolved.Ve = msg.Ve;
    }
    else {
      resolved.Ve = 0.0
    }

    if (msg.Vn !== undefined) {
      resolved.Vn = msg.Vn;
    }
    else {
      resolved.Vn = 0.0
    }

    if (msg.Vu !== undefined) {
      resolved.Vu = msg.Vu;
    }
    else {
      resolved.Vu = 0.0
    }

    if (msg.pose_type !== undefined) {
      resolved.pose_type = msg.pose_type;
    }
    else {
      resolved.pose_type = 0
    }

    if (msg.gpsTime !== undefined) {
      resolved.gpsTime = msg.gpsTime;
    }
    else {
      resolved.gpsTime = 0.0
    }

    if (msg.INS_Status !== undefined) {
      resolved.INS_Status = msg.INS_Status;
    }
    else {
      resolved.INS_Status = 0
    }

    if (msg.Lat_vari !== undefined) {
      resolved.Lat_vari = msg.Lat_vari;
    }
    else {
      resolved.Lat_vari = 0.0
    }

    if (msg.Lon_vari !== undefined) {
      resolved.Lon_vari = msg.Lon_vari;
    }
    else {
      resolved.Lon_vari = 0.0
    }

    return resolved;
    }
};

module.exports = NaviData;
