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

class SideLampsCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.SideLampsEnable = null;
    }
    else {
      if (initObj.hasOwnProperty('SideLampsEnable')) {
        this.SideLampsEnable = initObj.SideLampsEnable
      }
      else {
        this.SideLampsEnable = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SideLampsCmdRequest
    // Serialize message field [SideLampsEnable]
    bufferOffset = _serializer.uint8(obj.SideLampsEnable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SideLampsCmdRequest
    let len;
    let data = new SideLampsCmdRequest(null);
    // Deserialize message field [SideLampsEnable]
    data.SideLampsEnable = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/SideLampsCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '371c358e104faf3d9945beaf0d2d1e3d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #----------------------------------------------------------------------
    # 作者 ：杨东
    # 时间 ：2019.08.12
    # 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
    # 说明 ：
    #      LCM_SideLamps 示廓灯命令  0x0:Turn Off;0x1:Turn On
    #----------------------------------------------------------------------
    
    #请求---------------------------------------------------------
    ##定义赋值枚举
    uint8 TurnOff=0
    uint8 TurnOn=1
    #
    uint8 SideLampsEnable        #喇叭:0x0:Turn Off;0x1:Turn On
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SideLampsCmdRequest(null);
    if (msg.SideLampsEnable !== undefined) {
      resolved.SideLampsEnable = msg.SideLampsEnable;
    }
    else {
      resolved.SideLampsEnable = 0
    }

    return resolved;
    }
};

// Constants for message
SideLampsCmdRequest.Constants = {
  TURNOFF: 0,
  TURNON: 1,
}

class SideLampsCmdResponse {
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
    // Serializes a message object of type SideLampsCmdResponse
    // Serialize message field [res]
    bufferOffset = _serializer.bool(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SideLampsCmdResponse
    let len;
    let data = new SideLampsCmdResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/SideLampsCmdResponse';
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
    const resolved = new SideLampsCmdResponse(null);
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
  Request: SideLampsCmdRequest,
  Response: SideLampsCmdResponse,
  md5sum() { return '0d308c1c8608ef82d9ba9d867f3edac3'; },
  datatype() { return 'custom_msgs/SideLampsCmd'; }
};
