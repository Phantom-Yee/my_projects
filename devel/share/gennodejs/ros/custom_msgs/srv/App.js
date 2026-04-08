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

class AppRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isSend = null;
      this.sendbuf = null;
    }
    else {
      if (initObj.hasOwnProperty('isSend')) {
        this.isSend = initObj.isSend
      }
      else {
        this.isSend = 0;
      }
      if (initObj.hasOwnProperty('sendbuf')) {
        this.sendbuf = initObj.sendbuf
      }
      else {
        this.sendbuf = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AppRequest
    // Serialize message field [isSend]
    bufferOffset = _serializer.uint8(obj.isSend, buffer, bufferOffset);
    // Serialize message field [sendbuf]
    bufferOffset = _serializer.string(obj.sendbuf, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AppRequest
    let len;
    let data = new AppRequest(null);
    // Deserialize message field [isSend]
    data.isSend = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sendbuf]
    data.sendbuf = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sendbuf);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/AppRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de5e3f2f9e750abf1c26b58ee4ee5352';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #------------------------------
    #接收或者发送给APP
    #------------------------------
    uint8  isSend    # 1:发送 0:接收
    string sendbuf           
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AppRequest(null);
    if (msg.isSend !== undefined) {
      resolved.isSend = msg.isSend;
    }
    else {
      resolved.isSend = 0
    }

    if (msg.sendbuf !== undefined) {
      resolved.sendbuf = msg.sendbuf;
    }
    else {
      resolved.sendbuf = ''
    }

    return resolved;
    }
};

class AppResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.recvbuf = null;
    }
    else {
      if (initObj.hasOwnProperty('recvbuf')) {
        this.recvbuf = initObj.recvbuf
      }
      else {
        this.recvbuf = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AppResponse
    // Serialize message field [recvbuf]
    bufferOffset = _serializer.string(obj.recvbuf, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AppResponse
    let len;
    let data = new AppResponse(null);
    // Deserialize message field [recvbuf]
    data.recvbuf = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.recvbuf);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/AppResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f85192e536c8f9baa31c6c11ab6b9d88';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string recvbuf            
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AppResponse(null);
    if (msg.recvbuf !== undefined) {
      resolved.recvbuf = msg.recvbuf;
    }
    else {
      resolved.recvbuf = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: AppRequest,
  Response: AppResponse,
  md5sum() { return '1d44dccf337b7714e82dab40e79d7373'; },
  datatype() { return 'custom_msgs/App'; }
};
