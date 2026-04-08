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

class RoadAttri {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.velocity = null;
      this.road_width = null;
      this.aeb_front = null;
      this.aeb_back = null;
      this.aeb_left = null;
      this.aeb_right = null;
      this.detect_front = null;
      this.detect_back = null;
      this.detect_left = null;
      this.detect_right = null;
    }
    else {
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('road_width')) {
        this.road_width = initObj.road_width
      }
      else {
        this.road_width = 0.0;
      }
      if (initObj.hasOwnProperty('aeb_front')) {
        this.aeb_front = initObj.aeb_front
      }
      else {
        this.aeb_front = 0.0;
      }
      if (initObj.hasOwnProperty('aeb_back')) {
        this.aeb_back = initObj.aeb_back
      }
      else {
        this.aeb_back = 0.0;
      }
      if (initObj.hasOwnProperty('aeb_left')) {
        this.aeb_left = initObj.aeb_left
      }
      else {
        this.aeb_left = 0.0;
      }
      if (initObj.hasOwnProperty('aeb_right')) {
        this.aeb_right = initObj.aeb_right
      }
      else {
        this.aeb_right = 0.0;
      }
      if (initObj.hasOwnProperty('detect_front')) {
        this.detect_front = initObj.detect_front
      }
      else {
        this.detect_front = 0.0;
      }
      if (initObj.hasOwnProperty('detect_back')) {
        this.detect_back = initObj.detect_back
      }
      else {
        this.detect_back = 0.0;
      }
      if (initObj.hasOwnProperty('detect_left')) {
        this.detect_left = initObj.detect_left
      }
      else {
        this.detect_left = 0.0;
      }
      if (initObj.hasOwnProperty('detect_right')) {
        this.detect_right = initObj.detect_right
      }
      else {
        this.detect_right = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadAttri
    // Serialize message field [velocity]
    bufferOffset = _serializer.float32(obj.velocity, buffer, bufferOffset);
    // Serialize message field [road_width]
    bufferOffset = _serializer.float32(obj.road_width, buffer, bufferOffset);
    // Serialize message field [aeb_front]
    bufferOffset = _serializer.float32(obj.aeb_front, buffer, bufferOffset);
    // Serialize message field [aeb_back]
    bufferOffset = _serializer.float32(obj.aeb_back, buffer, bufferOffset);
    // Serialize message field [aeb_left]
    bufferOffset = _serializer.float32(obj.aeb_left, buffer, bufferOffset);
    // Serialize message field [aeb_right]
    bufferOffset = _serializer.float32(obj.aeb_right, buffer, bufferOffset);
    // Serialize message field [detect_front]
    bufferOffset = _serializer.float32(obj.detect_front, buffer, bufferOffset);
    // Serialize message field [detect_back]
    bufferOffset = _serializer.float32(obj.detect_back, buffer, bufferOffset);
    // Serialize message field [detect_left]
    bufferOffset = _serializer.float32(obj.detect_left, buffer, bufferOffset);
    // Serialize message field [detect_right]
    bufferOffset = _serializer.float32(obj.detect_right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadAttri
    let len;
    let data = new RoadAttri(null);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [road_width]
    data.road_width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [aeb_front]
    data.aeb_front = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [aeb_back]
    data.aeb_back = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [aeb_left]
    data.aeb_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [aeb_right]
    data.aeb_right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [detect_front]
    data.detect_front = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [detect_back]
    data.detect_back = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [detect_left]
    data.detect_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [detect_right]
    data.detect_right = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/RoadAttri';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a92758409755c69dc8ed8773a4195c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #---------------------------------------------------------------
    # 作者 ：lsxing
    # 时间 ：2020.12.12
    # 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
    # 说明 ：描述道路基本属性的消息结构
    #----------------------------------------------------------------   
    
    float32 velocity     #期望车速
    
    float32 road_width   #道路宽度
    
    float32 aeb_front   #AEB范围
    float32 aeb_back
    float32 aeb_left
    float32 aeb_right
    
    float32 detect_front  #检测范围
    float32 detect_back
    float32 detect_left
    float32 detect_right
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadAttri(null);
    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.road_width !== undefined) {
      resolved.road_width = msg.road_width;
    }
    else {
      resolved.road_width = 0.0
    }

    if (msg.aeb_front !== undefined) {
      resolved.aeb_front = msg.aeb_front;
    }
    else {
      resolved.aeb_front = 0.0
    }

    if (msg.aeb_back !== undefined) {
      resolved.aeb_back = msg.aeb_back;
    }
    else {
      resolved.aeb_back = 0.0
    }

    if (msg.aeb_left !== undefined) {
      resolved.aeb_left = msg.aeb_left;
    }
    else {
      resolved.aeb_left = 0.0
    }

    if (msg.aeb_right !== undefined) {
      resolved.aeb_right = msg.aeb_right;
    }
    else {
      resolved.aeb_right = 0.0
    }

    if (msg.detect_front !== undefined) {
      resolved.detect_front = msg.detect_front;
    }
    else {
      resolved.detect_front = 0.0
    }

    if (msg.detect_back !== undefined) {
      resolved.detect_back = msg.detect_back;
    }
    else {
      resolved.detect_back = 0.0
    }

    if (msg.detect_left !== undefined) {
      resolved.detect_left = msg.detect_left;
    }
    else {
      resolved.detect_left = 0.0
    }

    if (msg.detect_right !== undefined) {
      resolved.detect_right = msg.detect_right;
    }
    else {
      resolved.detect_right = 0.0
    }

    return resolved;
    }
};

module.exports = RoadAttri;
