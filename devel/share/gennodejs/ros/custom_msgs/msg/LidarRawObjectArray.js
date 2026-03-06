// Auto-generated. Do not edit!

// (in-package custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LidarRawObject = require('./LidarRawObject.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LidarRawObjectArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head = null;
      this.objs = null;
    }
    else {
      if (initObj.hasOwnProperty('head')) {
        this.head = initObj.head
      }
      else {
        this.head = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('objs')) {
        this.objs = initObj.objs
      }
      else {
        this.objs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarRawObjectArray
    // Serialize message field [head]
    bufferOffset = std_msgs.msg.Header.serialize(obj.head, buffer, bufferOffset);
    // Serialize message field [objs]
    // Serialize the length for message field [objs]
    bufferOffset = _serializer.uint32(obj.objs.length, buffer, bufferOffset);
    obj.objs.forEach((val) => {
      bufferOffset = LidarRawObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarRawObjectArray
    let len;
    let data = new LidarRawObjectArray(null);
    // Deserialize message field [head]
    data.head = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [objs]
    // Deserialize array length for message field [objs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objs[i] = LidarRawObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.head);
    length += 72 * object.objs.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/LidarRawObjectArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '91872448100bff9ab1fc1b93d510c0e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #------------------------------
    #由激光雷达检测出的目标所组成的序列
    #------------------------------
    
    std_msgs/Header head
    
    LidarRawObject[]    objs    #目标序列
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: custom_msgs/LidarRawObject
    #------------------------------
    #通过激光雷达检测出的目标
    #------------------------------
    
    
    geometry_msgs/Point[8]    bbox_point  #目标边框的8个顶点
    
    
    geometry_msgs/Vector3     lwh         #x,y,z分别为目标的长宽高，待定
    float32                   x_pos       #x位置，待定
    float32                   y_pos       #y位置，待定
    float32                   z_pos       #
    
    float32                   lidar_x_pos       #储存雷达坐标，用于目标跟踪
    float32                   lidar_y_pos       
    float32                   lidar_z_pos
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new LidarRawObjectArray(null);
    if (msg.head !== undefined) {
      resolved.head = std_msgs.msg.Header.Resolve(msg.head)
    }
    else {
      resolved.head = new std_msgs.msg.Header()
    }

    if (msg.objs !== undefined) {
      resolved.objs = new Array(msg.objs.length);
      for (let i = 0; i < resolved.objs.length; ++i) {
        resolved.objs[i] = LidarRawObject.Resolve(msg.objs[i]);
      }
    }
    else {
      resolved.objs = []
    }

    return resolved;
    }
};

module.exports = LidarRawObjectArray;
