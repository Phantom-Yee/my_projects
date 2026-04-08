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

class WarnRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.source = null;
      this.code = null;
    }
    else {
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = 0;
      }
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WarnRequest
    // Serialize message field [source]
    bufferOffset = _serializer.uint8(obj.source, buffer, bufferOffset);
    // Serialize message field [code]
    bufferOffset = _serializer.uint8(obj.code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WarnRequest
    let len;
    let data = new WarnRequest(null);
    // Deserialize message field [source]
    data.source = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [code]
    data.code = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/WarnRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a4d12632564889545d9dfc693560f12';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #------------------------------
    #异常报警服务
    #------------------------------
    uint8  source   #消息来源
    uint8  code     #错误码
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WarnRequest(null);
    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = 0
    }

    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = 0
    }

    return resolved;
    }
};

class WarnResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isLidarOK = null;
      this.isNaviOK = null;
      this.isCtrlOK = null;
      this.isXavierOK = null;
    }
    else {
      if (initObj.hasOwnProperty('isLidarOK')) {
        this.isLidarOK = initObj.isLidarOK
      }
      else {
        this.isLidarOK = 0;
      }
      if (initObj.hasOwnProperty('isNaviOK')) {
        this.isNaviOK = initObj.isNaviOK
      }
      else {
        this.isNaviOK = 0;
      }
      if (initObj.hasOwnProperty('isCtrlOK')) {
        this.isCtrlOK = initObj.isCtrlOK
      }
      else {
        this.isCtrlOK = 0;
      }
      if (initObj.hasOwnProperty('isXavierOK')) {
        this.isXavierOK = initObj.isXavierOK
      }
      else {
        this.isXavierOK = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WarnResponse
    // Serialize message field [isLidarOK]
    bufferOffset = _serializer.uint8(obj.isLidarOK, buffer, bufferOffset);
    // Serialize message field [isNaviOK]
    bufferOffset = _serializer.uint8(obj.isNaviOK, buffer, bufferOffset);
    // Serialize message field [isCtrlOK]
    bufferOffset = _serializer.uint8(obj.isCtrlOK, buffer, bufferOffset);
    // Serialize message field [isXavierOK]
    bufferOffset = _serializer.uint8(obj.isXavierOK, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WarnResponse
    let len;
    let data = new WarnResponse(null);
    // Deserialize message field [isLidarOK]
    data.isLidarOK = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [isNaviOK]
    data.isNaviOK = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [isCtrlOK]
    data.isCtrlOK = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [isXavierOK]
    data.isXavierOK = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/WarnResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '207ef8cbd2bf5ece28c6335dff80736f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8   isLidarOK
    uint8   isNaviOK
    uint8   isCtrlOK
    uint8   isXavierOK
    
    
    #----------请按照如下注释进行赋值调用服务-----------------
    
    #------获取状态--------
    #source-->  0
    # 
    #无异常申报，但需要获取状态source赋值为0
    #-------------------
    
    #------lidar--------
    #source-->  1
    #code  -->  0x00: 正常 
    #           0x01：(某某)雷达错误
    #           0x02：(某某)雷达错误
    #-------------------
    
    #------navi--------
    #source-->  2
    #code  -->  0x00: 正常 
    #           0x01：
    #           0x02：
    #-------------------
    
    #------ctrl--------
    #source-->  3
    #code  -->  0x00: 正常 
    #           0x01：
    #           0x02：
    #-------------------
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WarnResponse(null);
    if (msg.isLidarOK !== undefined) {
      resolved.isLidarOK = msg.isLidarOK;
    }
    else {
      resolved.isLidarOK = 0
    }

    if (msg.isNaviOK !== undefined) {
      resolved.isNaviOK = msg.isNaviOK;
    }
    else {
      resolved.isNaviOK = 0
    }

    if (msg.isCtrlOK !== undefined) {
      resolved.isCtrlOK = msg.isCtrlOK;
    }
    else {
      resolved.isCtrlOK = 0
    }

    if (msg.isXavierOK !== undefined) {
      resolved.isXavierOK = msg.isXavierOK;
    }
    else {
      resolved.isXavierOK = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: WarnRequest,
  Response: WarnResponse,
  md5sum() { return 'aa3e75dde8fd6fb3a237b3eef4655d49'; },
  datatype() { return 'custom_msgs/Warn'; }
};
