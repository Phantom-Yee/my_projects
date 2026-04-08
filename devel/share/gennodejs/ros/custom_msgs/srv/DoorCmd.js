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

class DoorCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.DoorLOCK = null;
    }
    else {
      if (initObj.hasOwnProperty('DoorLOCK')) {
        this.DoorLOCK = initObj.DoorLOCK
      }
      else {
        this.DoorLOCK = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DoorCmdRequest
    // Serialize message field [DoorLOCK]
    bufferOffset = _serializer.uint8(obj.DoorLOCK, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DoorCmdRequest
    let len;
    let data = new DoorCmdRequest(null);
    // Deserialize message field [DoorLOCK]
    data.DoorLOCK = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/DoorCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fc2b585cc208c62e4c93679414bf232';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #---------------------------------------------------------------
    # 作者 ：杨东
    # 时间 ：2019.08.12
    # 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
    # 说明 ：
    #      BCM BCM_Door 门锁控制
    #         0x0  APA_NO_CMD
    #         0x1  APA_UNLOCK_CMD
    #         0x2  APA_LOCK_CMD
    #----------------------------------------------------------------
    
    #请求------------------------------------------------------------
    ##定义赋值枚举
    uint8 NO_CMD=0
    uint8 UNLOCK_CMD=6
    uint8 LOCK_CMD=7
    #控制字段
    uint8 DoorLOCK
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DoorCmdRequest(null);
    if (msg.DoorLOCK !== undefined) {
      resolved.DoorLOCK = msg.DoorLOCK;
    }
    else {
      resolved.DoorLOCK = 0
    }

    return resolved;
    }
};

// Constants for message
DoorCmdRequest.Constants = {
  NO_CMD: 0,
  UNLOCK_CMD: 6,
  LOCK_CMD: 7,
}

class DoorCmdResponse {
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
    // Serializes a message object of type DoorCmdResponse
    // Serialize message field [res]
    bufferOffset = _serializer.bool(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DoorCmdResponse
    let len;
    let data = new DoorCmdResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/DoorCmdResponse';
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
    const resolved = new DoorCmdResponse(null);
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
  Request: DoorCmdRequest,
  Response: DoorCmdResponse,
  md5sum() { return '61d6d40c0b7064601d49a385243830d5'; },
  datatype() { return 'custom_msgs/DoorCmd'; }
};
