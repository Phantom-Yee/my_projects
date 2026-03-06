// Auto-generated. Do not edit!

// (in-package custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head = null;
      this.reques_type = null;
      this.run_speed = null;
      this.stop_distance = null;
      this.aeb_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('head')) {
        this.head = initObj.head
      }
      else {
        this.head = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('reques_type')) {
        this.reques_type = initObj.reques_type
      }
      else {
        this.reques_type = 0;
      }
      if (initObj.hasOwnProperty('run_speed')) {
        this.run_speed = initObj.run_speed
      }
      else {
        this.run_speed = 0.0;
      }
      if (initObj.hasOwnProperty('stop_distance')) {
        this.stop_distance = initObj.stop_distance
      }
      else {
        this.stop_distance = 0.0;
      }
      if (initObj.hasOwnProperty('aeb_distance')) {
        this.aeb_distance = initObj.aeb_distance
      }
      else {
        this.aeb_distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Request
    // Serialize message field [head]
    bufferOffset = std_msgs.msg.Header.serialize(obj.head, buffer, bufferOffset);
    // Serialize message field [reques_type]
    bufferOffset = _serializer.uint8(obj.reques_type, buffer, bufferOffset);
    // Serialize message field [run_speed]
    bufferOffset = _serializer.float32(obj.run_speed, buffer, bufferOffset);
    // Serialize message field [stop_distance]
    bufferOffset = _serializer.float32(obj.stop_distance, buffer, bufferOffset);
    // Serialize message field [aeb_distance]
    bufferOffset = _serializer.float32(obj.aeb_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Request
    let len;
    let data = new Request(null);
    // Deserialize message field [head]
    data.head = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [reques_type]
    data.reques_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [run_speed]
    data.run_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stop_distance]
    data.stop_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [aeb_distance]
    data.aeb_distance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.head);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33db08dafe47ef9121746ecf8b323f75';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #---------------------------------------------------------------
    # 作者 ：杨东
    # 时间 ：2019.08.12
    # 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
    # 说明 ：
    #----------------------------------------------------------------
    
    std_msgs/Header head
    
    
    uint8 FORWARD_ENABLE=0     #前进使能
    uint8 BACK_ENABLE=1        #倒车使能
    uint8 STOP_ENABLE=2        #停车使能
    uint8 AEB_ENABLE=3         #紧急刹车使能
    
    uint8    reques_type       #使能类型
    float32  run_speed         #行车速度
    float32  stop_distance     #前方停止距离
    float32  aeb_distance      #前方AEB停止距离
    
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Request(null);
    if (msg.head !== undefined) {
      resolved.head = std_msgs.msg.Header.Resolve(msg.head)
    }
    else {
      resolved.head = new std_msgs.msg.Header()
    }

    if (msg.reques_type !== undefined) {
      resolved.reques_type = msg.reques_type;
    }
    else {
      resolved.reques_type = 0
    }

    if (msg.run_speed !== undefined) {
      resolved.run_speed = msg.run_speed;
    }
    else {
      resolved.run_speed = 0.0
    }

    if (msg.stop_distance !== undefined) {
      resolved.stop_distance = msg.stop_distance;
    }
    else {
      resolved.stop_distance = 0.0
    }

    if (msg.aeb_distance !== undefined) {
      resolved.aeb_distance = msg.aeb_distance;
    }
    else {
      resolved.aeb_distance = 0.0
    }

    return resolved;
    }
};

// Constants for message
Request.Constants = {
  FORWARD_ENABLE: 0,
  BACK_ENABLE: 1,
  STOP_ENABLE: 2,
  AEB_ENABLE: 3,
}

module.exports = Request;
