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

class TurnLightCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.TurnLightEnable = null;
    }
    else {
      if (initObj.hasOwnProperty('TurnLightEnable')) {
        this.TurnLightEnable = initObj.TurnLightEnable
      }
      else {
        this.TurnLightEnable = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurnLightCmdRequest
    // Serialize message field [TurnLightEnable]
    bufferOffset = _serializer.uint8(obj.TurnLightEnable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurnLightCmdRequest
    let len;
    let data = new TurnLightCmdRequest(null);
    // Deserialize message field [TurnLightEnable]
    data.TurnLightEnable = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/TurnLightCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5fc1c961b0d1c465a6f2132e0974db96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #----------------------------------------------------------------------
    # 作者 ：杨东
    # 时间 ：2019.08.12
    # 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
    # 说明 ：
    #      LCM_TurnLight 转向灯命令  0x0:Not Active:0x1：
    #                              TurnRight；0x2：TurnLeft;0x3:DoubleLight
    #----------------------------------------------------------------------
    
    #请求---------------------------------------------------------
    ##定义赋值枚举
    uint8 TurnOff=0
    uint8 TurnLeft=1
    uint8 TurnRight=2
    
    #
    uint8 TurnLightEnable
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TurnLightCmdRequest(null);
    if (msg.TurnLightEnable !== undefined) {
      resolved.TurnLightEnable = msg.TurnLightEnable;
    }
    else {
      resolved.TurnLightEnable = 0
    }

    return resolved;
    }
};

// Constants for message
TurnLightCmdRequest.Constants = {
  TURNOFF: 0,
  TURNLEFT: 1,
  TURNRIGHT: 2,
}

class TurnLightCmdResponse {
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
    // Serializes a message object of type TurnLightCmdResponse
    // Serialize message field [res]
    bufferOffset = _serializer.bool(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurnLightCmdResponse
    let len;
    let data = new TurnLightCmdResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/TurnLightCmdResponse';
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
    const resolved = new TurnLightCmdResponse(null);
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
  Request: TurnLightCmdRequest,
  Response: TurnLightCmdResponse,
  md5sum() { return '322d87667a5cf45a7b0e59fea7572bbf'; },
  datatype() { return 'custom_msgs/TurnLightCmd'; }
};
