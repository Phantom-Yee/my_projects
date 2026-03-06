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

class TrqBreCmd485 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head = null;
      this.cmd_type = null;
      this.pay_load = null;
    }
    else {
      if (initObj.hasOwnProperty('head')) {
        this.head = initObj.head
      }
      else {
        this.head = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cmd_type')) {
        this.cmd_type = initObj.cmd_type
      }
      else {
        this.cmd_type = 0;
      }
      if (initObj.hasOwnProperty('pay_load')) {
        this.pay_load = initObj.pay_load
      }
      else {
        this.pay_load = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrqBreCmd485
    // Serialize message field [head]
    bufferOffset = std_msgs.msg.Header.serialize(obj.head, buffer, bufferOffset);
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.uint8(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [pay_load]
    bufferOffset = _serializer.uint8(obj.pay_load, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrqBreCmd485
    let len;
    let data = new TrqBreCmd485(null);
    // Deserialize message field [head]
    data.head = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pay_load]
    data.pay_load = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.head);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/TrqBreCmd485';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be77f276997429f5059b00917c72a649';
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
    
    uint8   cmd_type                  #ming ling zi
    uint8   pay_load                  #->>zai he: ming ling zi dui ying       
    
    
    
    
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
    const resolved = new TrqBreCmd485(null);
    if (msg.head !== undefined) {
      resolved.head = std_msgs.msg.Header.Resolve(msg.head)
    }
    else {
      resolved.head = new std_msgs.msg.Header()
    }

    if (msg.cmd_type !== undefined) {
      resolved.cmd_type = msg.cmd_type;
    }
    else {
      resolved.cmd_type = 0
    }

    if (msg.pay_load !== undefined) {
      resolved.pay_load = msg.pay_load;
    }
    else {
      resolved.pay_load = 0
    }

    return resolved;
    }
};

module.exports = TrqBreCmd485;
