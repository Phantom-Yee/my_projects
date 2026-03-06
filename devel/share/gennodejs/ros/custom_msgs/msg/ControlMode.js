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

class ControlMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
      this.mode_type = null;
      this.brake_enable = null;
      this.brake_value = null;
      this.speed_require = null;
      this.angle_require = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = 0;
      }
      if (initObj.hasOwnProperty('mode_type')) {
        this.mode_type = initObj.mode_type
      }
      else {
        this.mode_type = 0;
      }
      if (initObj.hasOwnProperty('brake_enable')) {
        this.brake_enable = initObj.brake_enable
      }
      else {
        this.brake_enable = 0;
      }
      if (initObj.hasOwnProperty('brake_value')) {
        this.brake_value = initObj.brake_value
      }
      else {
        this.brake_value = 0;
      }
      if (initObj.hasOwnProperty('speed_require')) {
        this.speed_require = initObj.speed_require
      }
      else {
        this.speed_require = 0.0;
      }
      if (initObj.hasOwnProperty('angle_require')) {
        this.angle_require = initObj.angle_require
      }
      else {
        this.angle_require = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlMode
    // Serialize message field [start]
    bufferOffset = _serializer.uint8(obj.start, buffer, bufferOffset);
    // Serialize message field [mode_type]
    bufferOffset = _serializer.uint8(obj.mode_type, buffer, bufferOffset);
    // Serialize message field [brake_enable]
    bufferOffset = _serializer.uint8(obj.brake_enable, buffer, bufferOffset);
    // Serialize message field [brake_value]
    bufferOffset = _serializer.uint8(obj.brake_value, buffer, bufferOffset);
    // Serialize message field [speed_require]
    bufferOffset = _serializer.float32(obj.speed_require, buffer, bufferOffset);
    // Serialize message field [angle_require]
    bufferOffset = _serializer.float32(obj.angle_require, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlMode
    let len;
    let data = new ControlMode(null);
    // Deserialize message field [start]
    data.start = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mode_type]
    data.mode_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake_enable]
    data.brake_enable = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake_value]
    data.brake_value = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed_require]
    data.speed_require = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_require]
    data.angle_require = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/ControlMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c547e8f4a6c7926cc11dc380930bfb6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8      start                     #qidong
    uint8      mode_type                 #模式类型  00：无， 自动模式：（11：自动生成地图，12：已有地图） 遥控模式：20
    uint8      brake_enable              #制动使能  0：制动，1：可行驶
    uint8      brake_value               #制动值  
    float32    speed_require             #速度要求
    float32    angle_require             #角度要求
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlMode(null);
    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = 0
    }

    if (msg.mode_type !== undefined) {
      resolved.mode_type = msg.mode_type;
    }
    else {
      resolved.mode_type = 0
    }

    if (msg.brake_enable !== undefined) {
      resolved.brake_enable = msg.brake_enable;
    }
    else {
      resolved.brake_enable = 0
    }

    if (msg.brake_value !== undefined) {
      resolved.brake_value = msg.brake_value;
    }
    else {
      resolved.brake_value = 0
    }

    if (msg.speed_require !== undefined) {
      resolved.speed_require = msg.speed_require;
    }
    else {
      resolved.speed_require = 0.0
    }

    if (msg.angle_require !== undefined) {
      resolved.angle_require = msg.angle_require;
    }
    else {
      resolved.angle_require = 0.0
    }

    return resolved;
    }
};

module.exports = ControlMode;
