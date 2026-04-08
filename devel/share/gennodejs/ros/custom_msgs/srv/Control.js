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

class ControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.enable = null;
      this.info = null;
      this.source = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = false;
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = 0.0;
      }
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlRequest
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [enable]
    bufferOffset = _serializer.bool(obj.enable, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = _serializer.float32(obj.info, buffer, bufferOffset);
    // Serialize message field [source]
    bufferOffset = _serializer.string(obj.source, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlRequest
    let len;
    let data = new ControlRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [enable]
    data.enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [source]
    data.source = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.source);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/ControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '35e8d4ea6c1ae1ec1c75741c61fa2a4d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #------------------------------
    #横向规划
    #------------------------------
    
    uint8    Is_stop = 1
    uint8    Is_aeb  = 2
    uint8    Is_back = 3
    uint8    Is_switch_speed = 4
    
    uint8   type     #控制类别
    bool    enable   #使能
    float32 info     #包括速度、刹车距离
    string  source   #控制消息来源
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = false
    }

    if (msg.info !== undefined) {
      resolved.info = msg.info;
    }
    else {
      resolved.info = 0.0
    }

    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = ''
    }

    return resolved;
    }
};

// Constants for message
ControlRequest.Constants = {
  IS_STOP: 1,
  IS_AEB: 2,
  IS_BACK: 3,
  IS_SWITCH_SPEED: 4,
}

class ControlResponse {
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
    // Serializes a message object of type ControlResponse
    // Serialize message field [isSuccess]
    bufferOffset = _serializer.bool(obj.isSuccess, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlResponse
    let len;
    let data = new ControlResponse(null);
    // Deserialize message field [isSuccess]
    data.isSuccess = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/ControlResponse';
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
    const resolved = new ControlResponse(null);
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
  Request: ControlRequest,
  Response: ControlResponse,
  md5sum() { return '381944d60ba0e70fd89c5bcfc7b6474d'; },
  datatype() { return 'custom_msgs/Control'; }
};
