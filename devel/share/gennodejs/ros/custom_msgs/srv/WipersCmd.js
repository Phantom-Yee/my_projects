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

class WipersCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.WipersEnable = null;
    }
    else {
      if (initObj.hasOwnProperty('WipersEnable')) {
        this.WipersEnable = initObj.WipersEnable
      }
      else {
        this.WipersEnable = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WipersCmdRequest
    // Serialize message field [WipersEnable]
    bufferOffset = _serializer.uint8(obj.WipersEnable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WipersCmdRequest
    let len;
    let data = new WipersCmdRequest(null);
    // Deserialize message field [WipersEnable]
    data.WipersEnable = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/WipersCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '504817eeef3d5736066562c0d4ca65ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #---------------------------------------------------------------
    # 作者 ：杨东
    # 时间 ：2019.08.12
    # 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
    # 说明 ：
    #      BCM BCM_Wipers 雨刮控制
    #         0：停
    #         6：低速刮刷
    #         7：高速刮刷
    #----------------------------------------------------------------
    
    #请求---------------------------------------------------------
    ##定义赋值枚举
    uint8 TurnOff=0
    uint8 LowSpeed=6
    uint8 HighSpeed=7
    #
    uint8 WipersEnable   
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WipersCmdRequest(null);
    if (msg.WipersEnable !== undefined) {
      resolved.WipersEnable = msg.WipersEnable;
    }
    else {
      resolved.WipersEnable = 0
    }

    return resolved;
    }
};

// Constants for message
WipersCmdRequest.Constants = {
  TURNOFF: 0,
  LOWSPEED: 6,
  HIGHSPEED: 7,
}

class WipersCmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.res = null;
    }
    else {
      if (initObj.hasOwnProperty('res')) {
        this.res = initObj.res
      }
      else {
        this.res = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WipersCmdResponse
    // Serialize message field [res]
    bufferOffset = _serializer.bool(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WipersCmdResponse
    let len;
    let data = new WipersCmdResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/WipersCmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e27848a10f8e7e4030443887dfea101b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #返回值-----------------------------------------------------------
    ##定义赋值枚举
    bool res
    #控制字段
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WipersCmdResponse(null);
    if (msg.res !== undefined) {
      resolved.res = msg.res;
    }
    else {
      resolved.res = false
    }

    return resolved;
    }
};

module.exports = {
  Request: WipersCmdRequest,
  Response: WipersCmdResponse,
  md5sum() { return 'fcb46d2085dd0f54813d4da9f776b2e3'; },
  datatype() { return 'custom_msgs/WipersCmd'; }
};
