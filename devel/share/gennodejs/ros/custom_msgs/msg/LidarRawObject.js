// Auto-generated. Do not edit!

// (in-package custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LidarRawObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bbox_point = null;
      this.lwh = null;
      this.x_pos = null;
      this.y_pos = null;
      this.z_pos = null;
      this.lidar_x_pos = null;
      this.lidar_y_pos = null;
      this.lidar_z_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('bbox_point')) {
        this.bbox_point = initObj.bbox_point
      }
      else {
        this.bbox_point = new Array(8).fill(new geometry_msgs.msg.Point());
      }
      if (initObj.hasOwnProperty('lwh')) {
        this.lwh = initObj.lwh
      }
      else {
        this.lwh = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('x_pos')) {
        this.x_pos = initObj.x_pos
      }
      else {
        this.x_pos = 0.0;
      }
      if (initObj.hasOwnProperty('y_pos')) {
        this.y_pos = initObj.y_pos
      }
      else {
        this.y_pos = 0.0;
      }
      if (initObj.hasOwnProperty('z_pos')) {
        this.z_pos = initObj.z_pos
      }
      else {
        this.z_pos = 0.0;
      }
      if (initObj.hasOwnProperty('lidar_x_pos')) {
        this.lidar_x_pos = initObj.lidar_x_pos
      }
      else {
        this.lidar_x_pos = 0.0;
      }
      if (initObj.hasOwnProperty('lidar_y_pos')) {
        this.lidar_y_pos = initObj.lidar_y_pos
      }
      else {
        this.lidar_y_pos = 0.0;
      }
      if (initObj.hasOwnProperty('lidar_z_pos')) {
        this.lidar_z_pos = initObj.lidar_z_pos
      }
      else {
        this.lidar_z_pos = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarRawObject
    // Check that the constant length array field [bbox_point] has the right length
    if (obj.bbox_point.length !== 8) {
      throw new Error('Unable to serialize array field bbox_point - length must be 8')
    }
    // Serialize message field [bbox_point]
    obj.bbox_point.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lwh]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.lwh, buffer, bufferOffset);
    // Serialize message field [x_pos]
    bufferOffset = _serializer.float32(obj.x_pos, buffer, bufferOffset);
    // Serialize message field [y_pos]
    bufferOffset = _serializer.float32(obj.y_pos, buffer, bufferOffset);
    // Serialize message field [z_pos]
    bufferOffset = _serializer.float32(obj.z_pos, buffer, bufferOffset);
    // Serialize message field [lidar_x_pos]
    bufferOffset = _serializer.float32(obj.lidar_x_pos, buffer, bufferOffset);
    // Serialize message field [lidar_y_pos]
    bufferOffset = _serializer.float32(obj.lidar_y_pos, buffer, bufferOffset);
    // Serialize message field [lidar_z_pos]
    bufferOffset = _serializer.float32(obj.lidar_z_pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarRawObject
    let len;
    let data = new LidarRawObject(null);
    // Deserialize message field [bbox_point]
    len = 8;
    data.bbox_point = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bbox_point[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lwh]
    data.lwh = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [x_pos]
    data.x_pos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_pos]
    data.y_pos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z_pos]
    data.z_pos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lidar_x_pos]
    data.lidar_x_pos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lidar_y_pos]
    data.lidar_y_pos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lidar_z_pos]
    data.lidar_z_pos = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/LidarRawObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b51c36a6f4165e7b94950b3ee65d1f06';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LidarRawObject(null);
    if (msg.bbox_point !== undefined) {
      resolved.bbox_point = new Array(8)
      for (let i = 0; i < resolved.bbox_point.length; ++i) {
        if (msg.bbox_point.length > i) {
          resolved.bbox_point[i] = geometry_msgs.msg.Point.Resolve(msg.bbox_point[i]);
        }
        else {
          resolved.bbox_point[i] = new geometry_msgs.msg.Point();
        }
      }
    }
    else {
      resolved.bbox_point = new Array(8).fill(new geometry_msgs.msg.Point())
    }

    if (msg.lwh !== undefined) {
      resolved.lwh = geometry_msgs.msg.Vector3.Resolve(msg.lwh)
    }
    else {
      resolved.lwh = new geometry_msgs.msg.Vector3()
    }

    if (msg.x_pos !== undefined) {
      resolved.x_pos = msg.x_pos;
    }
    else {
      resolved.x_pos = 0.0
    }

    if (msg.y_pos !== undefined) {
      resolved.y_pos = msg.y_pos;
    }
    else {
      resolved.y_pos = 0.0
    }

    if (msg.z_pos !== undefined) {
      resolved.z_pos = msg.z_pos;
    }
    else {
      resolved.z_pos = 0.0
    }

    if (msg.lidar_x_pos !== undefined) {
      resolved.lidar_x_pos = msg.lidar_x_pos;
    }
    else {
      resolved.lidar_x_pos = 0.0
    }

    if (msg.lidar_y_pos !== undefined) {
      resolved.lidar_y_pos = msg.lidar_y_pos;
    }
    else {
      resolved.lidar_y_pos = 0.0
    }

    if (msg.lidar_z_pos !== undefined) {
      resolved.lidar_z_pos = msg.lidar_z_pos;
    }
    else {
      resolved.lidar_z_pos = 0.0
    }

    return resolved;
    }
};

module.exports = LidarRawObject;
