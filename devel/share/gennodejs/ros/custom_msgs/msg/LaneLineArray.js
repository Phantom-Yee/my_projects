// Auto-generated. Do not edit!

// (in-package custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneLine = require('./LaneLine.js');

//-----------------------------------------------------------

class LaneLineArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lines = null;
    }
    else {
      if (initObj.hasOwnProperty('lines')) {
        this.lines = initObj.lines
      }
      else {
        this.lines = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneLineArray
    // Serialize message field [lines]
    // Serialize the length for message field [lines]
    bufferOffset = _serializer.uint32(obj.lines.length, buffer, bufferOffset);
    obj.lines.forEach((val) => {
      bufferOffset = LaneLine.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneLineArray
    let len;
    let data = new LaneLineArray(null);
    // Deserialize message field [lines]
    // Deserialize array length for message field [lines]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lines = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lines[i] = LaneLine.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.lines.forEach((val) => {
      length += LaneLine.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/LaneLineArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b311b16e049dce662db6f00b38186809';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #------------------------------
    #车道线序列
    #------当前项目中车道线点序列长度为30
    #------------------------------
    
    LaneLine[]         lines
    
    ================================================================================
    MSG: custom_msgs/LaneLine
    #------------------------------
    #车道线
    #------当前项目中车道线点序列长度为30
    #------geometry_msgs/Point类型是（x,y,z),目前只填充x,y忽略z
    #------------------------------
    uint32                         id
    uint8                          type
    float64[]                      x
    float64[]                      y
    float64[]                      s
    
    geometry_msgs/Point[]          points
    uint8                          current_lane_num
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneLineArray(null);
    if (msg.lines !== undefined) {
      resolved.lines = new Array(msg.lines.length);
      for (let i = 0; i < resolved.lines.length; ++i) {
        resolved.lines[i] = LaneLine.Resolve(msg.lines[i]);
      }
    }
    else {
      resolved.lines = []
    }

    return resolved;
    }
};

module.exports = LaneLineArray;
