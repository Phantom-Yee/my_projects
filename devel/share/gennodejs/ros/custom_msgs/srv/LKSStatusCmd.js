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

class LKSStatusCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.LAS_LKSStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('LAS_LKSStatus')) {
        this.LAS_LKSStatus = initObj.LAS_LKSStatus
      }
      else {
        this.LAS_LKSStatus = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LKSStatusCmdRequest
    // Serialize message field [LAS_LKSStatus]
    bufferOffset = _serializer.uint8(obj.LAS_LKSStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LKSStatusCmdRequest
    let len;
    let data = new LKSStatusCmdRequest(null);
    // Deserialize message field [LAS_LKSStatus]
    data.LAS_LKSStatus = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/LKSStatusCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60c713564307fdff1a53a57ef31cd3b1';
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
    
    #请求---------------------------------------------------------
    ##定义赋值枚举
    uint8 Enable=0
    uint8 Diable=1
    #
    uint8 LAS_LKSStatus
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LKSStatusCmdRequest(null);
    if (msg.LAS_LKSStatus !== undefined) {
      resolved.LAS_LKSStatus = msg.LAS_LKSStatus;
    }
    else {
      resolved.LAS_LKSStatus = 0
    }

    return resolved;
    }
};

// Constants for message
LKSStatusCmdRequest.Constants = {
  ENABLE: 0,
  DIABLE: 1,
}

class LKSStatusCmdResponse {
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
    // Serializes a message object of type LKSStatusCmdResponse
    // Serialize message field [res]
    bufferOffset = _serializer.bool(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LKSStatusCmdResponse
    let len;
    let data = new LKSStatusCmdResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/LKSStatusCmdResponse';
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
    const resolved = new LKSStatusCmdResponse(null);
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
  Request: LKSStatusCmdRequest,
  Response: LKSStatusCmdResponse,
  md5sum() { return '7bb5f6915f70508cfdaad8cf055e8ba8'; },
  datatype() { return 'custom_msgs/LKSStatusCmd'; }
};
