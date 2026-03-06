// Auto-generated. Do not edit!

// (in-package custom_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RouteRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable = null;
      this.target_d = null;
      this.target_s = null;
    }
    else {
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = false;
      }
      if (initObj.hasOwnProperty('target_d')) {
        this.target_d = initObj.target_d
      }
      else {
        this.target_d = 0.0;
      }
      if (initObj.hasOwnProperty('target_s')) {
        this.target_s = initObj.target_s
      }
      else {
        this.target_s = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RouteRequest
    // Serialize message field [enable]
    bufferOffset = _serializer.bool(obj.enable, buffer, bufferOffset);
    // Serialize message field [target_d]
    bufferOffset = _serializer.float32(obj.target_d, buffer, bufferOffset);
    // Serialize message field [target_s]
    bufferOffset = _serializer.float32(obj.target_s, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RouteRequest
    let len;
    let data = new RouteRequest(null);
    // Deserialize message field [enable]
    data.enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [target_d]
    data.target_d = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_s]
    data.target_s = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/RouteRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '674cf3f915ea536c926ec78c98d453a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #------------------------------
    #路径规划
    #------------------------------
    bool     enable     #变道使能
    float32  target_d   #平移距离
    float32  target_s   #行驶target_s米后平移完成
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RouteRequest(null);
    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = false
    }

    if (msg.target_d !== undefined) {
      resolved.target_d = msg.target_d;
    }
    else {
      resolved.target_d = 0.0
    }

    if (msg.target_s !== undefined) {
      resolved.target_s = msg.target_s;
    }
    else {
      resolved.target_s = 0.0
    }

    return resolved;
    }
};

class RouteResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isSuccess = null;
    }
    else {
      if (initObj.hasOwnProperty('isSuccess')) {
        this.isSuccess = initObj.isSuccess
      }
      else {
        this.isSuccess = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RouteResponse
    // Serialize message field [isSuccess]
    bufferOffset = _serializer.bool(obj.isSuccess, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RouteResponse
    let len;
    let data = new RouteResponse(null);
    // Deserialize message field [isSuccess]
    data.isSuccess = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/RouteResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7dbd1de57ef8fd16c2d4ef28e12e701';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool    isSuccess
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RouteResponse(null);
    if (msg.isSuccess !== undefined) {
      resolved.isSuccess = msg.isSuccess;
    }
    else {
      resolved.isSuccess = false
    }

    return resolved;
    }
};

module.exports = {
  Request: RouteRequest,
  Response: RouteResponse,
  md5sum() { return '663e98081c7595a2a31a9cd17c6fa431'; },
  datatype() { return 'custom_msgs/Route'; }
};
