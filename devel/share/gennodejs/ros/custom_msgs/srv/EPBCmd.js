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

class EPBCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.APA_EPBrequestValid = null;
      this.APA_EPBrequest = null;
    }
    else {
      if (initObj.hasOwnProperty('APA_EPBrequestValid')) {
        this.APA_EPBrequestValid = initObj.APA_EPBrequestValid
      }
      else {
        this.APA_EPBrequestValid = 0;
      }
      if (initObj.hasOwnProperty('APA_EPBrequest')) {
        this.APA_EPBrequest = initObj.APA_EPBrequest
      }
      else {
        this.APA_EPBrequest = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EPBCmdRequest
    // Serialize message field [APA_EPBrequestValid]
    bufferOffset = _serializer.uint8(obj.APA_EPBrequestValid, buffer, bufferOffset);
    // Serialize message field [APA_EPBrequest]
    bufferOffset = _serializer.uint8(obj.APA_EPBrequest, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EPBCmdRequest
    let len;
    let data = new EPBCmdRequest(null);
    // Deserialize message field [APA_EPBrequestValid]
    data.APA_EPBrequestValid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [APA_EPBrequest]
    data.APA_EPBrequest = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/EPBCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5870eb4776224bce47be296faac775ae';
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
    uint8 APA_EPBrequestValid
    uint8 APA_EPBrequest
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EPBCmdRequest(null);
    if (msg.APA_EPBrequestValid !== undefined) {
      resolved.APA_EPBrequestValid = msg.APA_EPBrequestValid;
    }
    else {
      resolved.APA_EPBrequestValid = 0
    }

    if (msg.APA_EPBrequest !== undefined) {
      resolved.APA_EPBrequest = msg.APA_EPBrequest;
    }
    else {
      resolved.APA_EPBrequest = 0
    }

    return resolved;
    }
};

// Constants for message
EPBCmdRequest.Constants = {
  ENABLE: 0,
  DIABLE: 1,
}

class EPBCmdResponse {
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
    // Serializes a message object of type EPBCmdResponse
    // Serialize message field [res]
    bufferOffset = _serializer.bool(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EPBCmdResponse
    let len;
    let data = new EPBCmdResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/EPBCmdResponse';
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
    const resolved = new EPBCmdResponse(null);
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
  Request: EPBCmdRequest,
  Response: EPBCmdResponse,
  md5sum() { return '97ad02b260ada95bd0bdc9b9b400a370'; },
  datatype() { return 'custom_msgs/EPBCmd'; }
};
