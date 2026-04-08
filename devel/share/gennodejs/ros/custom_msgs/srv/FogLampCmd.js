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

class FogLampCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.FrontFogLamp = null;
      this.RearFogLamps = null;
    }
    else {
      if (initObj.hasOwnProperty('FrontFogLamp')) {
        this.FrontFogLamp = initObj.FrontFogLamp
      }
      else {
        this.FrontFogLamp = 0;
      }
      if (initObj.hasOwnProperty('RearFogLamps')) {
        this.RearFogLamps = initObj.RearFogLamps
      }
      else {
        this.RearFogLamps = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FogLampCmdRequest
    // Serialize message field [FrontFogLamp]
    bufferOffset = _serializer.uint8(obj.FrontFogLamp, buffer, bufferOffset);
    // Serialize message field [RearFogLamps]
    bufferOffset = _serializer.uint8(obj.RearFogLamps, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FogLampCmdRequest
    let len;
    let data = new FogLampCmdRequest(null);
    // Deserialize message field [FrontFogLamp]
    data.FrontFogLamp = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RearFogLamps]
    data.RearFogLamps = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/FogLampCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e15cfb394f9d18faaa0cdb03b823457';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #---------------------------------------------------------------
    # 作者 ：杨东
    # 时间 ：2019.08.12
    # 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
    # 说明 ：
    #      BCM LCM_FrontFogLamps  前雾灯命令 0x0:Turn Off;0x1:Turn On
    #          LCM_RearFogLamps   后雾灯命令 0x0:Turn Off;0x1:Turn On
    #----------------------------------------------------------------
    
    #请求---------------------------------------------------------
    ##定义赋值枚举
    uint8 TurnOff=0
    uint8 TurnOn=1
    #
    uint8 FrontFogLamp
    uint8 RearFogLamps 
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FogLampCmdRequest(null);
    if (msg.FrontFogLamp !== undefined) {
      resolved.FrontFogLamp = msg.FrontFogLamp;
    }
    else {
      resolved.FrontFogLamp = 0
    }

    if (msg.RearFogLamps !== undefined) {
      resolved.RearFogLamps = msg.RearFogLamps;
    }
    else {
      resolved.RearFogLamps = 0
    }

    return resolved;
    }
};

// Constants for message
FogLampCmdRequest.Constants = {
  TURNOFF: 0,
  TURNON: 1,
}

class FogLampCmdResponse {
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
    // Serializes a message object of type FogLampCmdResponse
    // Serialize message field [res]
    bufferOffset = _serializer.bool(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FogLampCmdResponse
    let len;
    let data = new FogLampCmdResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/FogLampCmdResponse';
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
    const resolved = new FogLampCmdResponse(null);
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
  Request: FogLampCmdRequest,
  Response: FogLampCmdResponse,
  md5sum() { return 'fbd437971ce67472818057cd942311e3'; },
  datatype() { return 'custom_msgs/FogLampCmd'; }
};
