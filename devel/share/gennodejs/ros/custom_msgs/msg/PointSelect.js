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

class PointSelect {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.point_1 = null;
      this.point_2 = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0.0;
      }
      if (initObj.hasOwnProperty('point_1')) {
        this.point_1 = initObj.point_1
      }
      else {
        this.point_1 = [];
      }
      if (initObj.hasOwnProperty('point_2')) {
        this.point_2 = initObj.point_2
      }
      else {
        this.point_2 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PointSelect
    // Serialize message field [type]
    bufferOffset = _serializer.float32(obj.type, buffer, bufferOffset);
    // Serialize message field [point_1]
    bufferOffset = _arraySerializer.float32(obj.point_1, buffer, bufferOffset, null);
    // Serialize message field [point_2]
    bufferOffset = _arraySerializer.float32(obj.point_2, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PointSelect
    let len;
    let data = new PointSelect(null);
    // Deserialize message field [type]
    data.type = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [point_1]
    data.point_1 = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [point_2]
    data.point_2 = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.point_1.length;
    length += 4 * object.point_2.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/PointSelect';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf7582f3b5bfc0a64281c25459c0b234';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32     type                         #路径类型 0:无  s 1:直线  2：圆弧
    float32[]   point_1                      #点1
    float32[]   point_2                      #点
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PointSelect(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0.0
    }

    if (msg.point_1 !== undefined) {
      resolved.point_1 = msg.point_1;
    }
    else {
      resolved.point_1 = []
    }

    if (msg.point_2 !== undefined) {
      resolved.point_2 = msg.point_2;
    }
    else {
      resolved.point_2 = []
    }

    return resolved;
    }
};

module.exports = PointSelect;
