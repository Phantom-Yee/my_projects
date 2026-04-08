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

class BrakeLightCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.BrakeLightEnable = null;
    }
    else {
      if (initObj.hasOwnProperty('BrakeLightEnable')) {
        this.BrakeLightEnable = initObj.BrakeLightEnable
      }
      else {
        this.BrakeLightEnable = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BrakeLightCmdRequest
    // Serialize message field [BrakeLightEnable]
    bufferOffset = _serializer.uint8(obj.BrakeLightEnable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakeLightCmdRequest
    let len;
    let data = new BrakeLightCmdRequest(null);
    // Deserialize message field [BrakeLightEnable]
    data.BrakeLightEnable = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/BrakeLightCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eafd24b09399fd926964747b5b09d214';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #---------------------------------------------------------------
    # 作者 ：杨东
    # 时间 ：2019.08.12
    # 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
    # 说明 ：
    #      BCM LCM_LowLight  近光灯命令   0x0:TurnOff 0x1：Turn On；
    #                                   0x2：Upanddown;0x3:Stop
    #          LCM_HeadLight 远光灯命令  0x0:Turn Off;0x1:Turn On
    #----------------------------------------------------------------
    
    #请求---------------------------------------------------------
    ##定义赋值枚举
    uint8 BrakeOff=0
    uint8 BrakeOn=1
    #控制字段
    uint8 BrakeLightEnable
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BrakeLightCmdRequest(null);
    if (msg.BrakeLightEnable !== undefined) {
      resolved.BrakeLightEnable = msg.BrakeLightEnable;
    }
    else {
      resolved.BrakeLightEnable = 0
    }

    return resolved;
    }
};

// Constants for message
BrakeLightCmdRequest.Constants = {
  BRAKEOFF: 0,
  BRAKEON: 1,
}

class BrakeLightCmdResponse {
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
    // Serializes a message object of type BrakeLightCmdResponse
    // Serialize message field [res]
    bufferOffset = _serializer.bool(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakeLightCmdResponse
    let len;
    let data = new BrakeLightCmdResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/BrakeLightCmdResponse';
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
    const resolved = new BrakeLightCmdResponse(null);
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
  Request: BrakeLightCmdRequest,
  Response: BrakeLightCmdResponse,
  md5sum() { return '019a843542c6ec9330a3c43d4e701d28'; },
  datatype() { return 'custom_msgs/BrakeLightCmd'; }
};
