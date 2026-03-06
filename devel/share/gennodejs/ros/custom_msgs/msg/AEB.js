// Auto-generated. Do not edit!

// (in-package custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AEB {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.do_aeb = null;
      this.dist = null;
    }
    else {
      if (initObj.hasOwnProperty('do_aeb')) {
        this.do_aeb = initObj.do_aeb
      }
      else {
        this.do_aeb = false;
      }
      if (initObj.hasOwnProperty('dist')) {
        this.dist = initObj.dist
      }
      else {
        this.dist = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AEB
    // Serialize message field [do_aeb]
    bufferOffset = _serializer.bool(obj.do_aeb, buffer, bufferOffset);
    // Serialize message field [dist]
    bufferOffset = _serializer.float32(obj.dist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AEB
    let len;
    let data = new AEB(null);
    // Deserialize message field [do_aeb]
    data.do_aeb = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dist]
    data.dist = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/AEB';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6cd562658145415c7ce4f97d390f01cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool    do_aeb #是否执行AEB
    float32 dist   #目标距离
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AEB(null);
    if (msg.do_aeb !== undefined) {
      resolved.do_aeb = msg.do_aeb;
    }
    else {
      resolved.do_aeb = false
    }

    if (msg.dist !== undefined) {
      resolved.dist = msg.dist;
    }
    else {
      resolved.dist = 0.0
    }

    return resolved;
    }
};

module.exports = AEB;
