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

class GateStatRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GateStatRequest
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GateStatRequest
    let len;
    let data = new GateStatRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/GateStatRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5e4a7d59c68f74eabcec876a00216aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #------------------------------
    #闸门
    #------------------------------
    int32 id         #闸门id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GateStatRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

class GateStatResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stat = null;
    }
    else {
      if (initObj.hasOwnProperty('stat')) {
        this.stat = initObj.stat
      }
      else {
        this.stat = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GateStatResponse
    // Serialize message field [stat]
    bufferOffset = _serializer.bool(obj.stat, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GateStatResponse
    let len;
    let data = new GateStatResponse(null);
    // Deserialize message field [stat]
    data.stat = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/GateStatResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bab1c51cc19a492062438fec099f1a58';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool stat            #闸门状态
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GateStatResponse(null);
    if (msg.stat !== undefined) {
      resolved.stat = msg.stat;
    }
    else {
      resolved.stat = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GateStatRequest,
  Response: GateStatResponse,
  md5sum() { return '15b8a5807c34c7a623d8c41ae0c40f7f'; },
  datatype() { return 'custom_msgs/GateStat'; }
};
