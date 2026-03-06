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

class Path {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_ref = null;
      this.y_ref = null;
    }
    else {
      if (initObj.hasOwnProperty('x_ref')) {
        this.x_ref = initObj.x_ref
      }
      else {
        this.x_ref = [];
      }
      if (initObj.hasOwnProperty('y_ref')) {
        this.y_ref = initObj.y_ref
      }
      else {
        this.y_ref = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Path
    // Serialize message field [x_ref]
    bufferOffset = _arraySerializer.float32(obj.x_ref, buffer, bufferOffset, null);
    // Serialize message field [y_ref]
    bufferOffset = _arraySerializer.float32(obj.y_ref, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Path
    let len;
    let data = new Path(null);
    // Deserialize message field [x_ref]
    data.x_ref = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [y_ref]
    data.y_ref = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.x_ref.length;
    length += 4 * object.y_ref.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/Path';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '086c82dabe09cb27a2918dd652bbdfdf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #------------------------------
    #路径规划后所得到的路径点（x,y,v）
    #------当前项目中路径点序列长度为30
    #------------------------------
    
    float32[]           x_ref      #路径点的x坐标
    float32[]           y_ref      #路径点的y坐标
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Path(null);
    if (msg.x_ref !== undefined) {
      resolved.x_ref = msg.x_ref;
    }
    else {
      resolved.x_ref = []
    }

    if (msg.y_ref !== undefined) {
      resolved.y_ref = msg.y_ref;
    }
    else {
      resolved.y_ref = []
    }

    return resolved;
    }
};

module.exports = Path;
