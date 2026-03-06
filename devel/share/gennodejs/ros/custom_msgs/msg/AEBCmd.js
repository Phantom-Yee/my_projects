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

class AEBCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head = null;
      this.AEB_enable = null;
      this.ACC_DecToStop = null;
      this.AEB_bre_value = null;
    }
    else {
      if (initObj.hasOwnProperty('head')) {
        this.head = initObj.head
      }
      else {
        this.head = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('AEB_enable')) {
        this.AEB_enable = initObj.AEB_enable
      }
      else {
        this.AEB_enable = 0;
      }
      if (initObj.hasOwnProperty('ACC_DecToStop')) {
        this.ACC_DecToStop = initObj.ACC_DecToStop
      }
      else {
        this.ACC_DecToStop = 0;
      }
      if (initObj.hasOwnProperty('AEB_bre_value')) {
        this.AEB_bre_value = initObj.AEB_bre_value
      }
      else {
        this.AEB_bre_value = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AEBCmd
    // Serialize message field [head]
    bufferOffset = std_msgs.msg.Header.serialize(obj.head, buffer, bufferOffset);
    // Serialize message field [AEB_enable]
    bufferOffset = _serializer.uint8(obj.AEB_enable, buffer, bufferOffset);
    // Serialize message field [ACC_DecToStop]
    bufferOffset = _serializer.uint8(obj.ACC_DecToStop, buffer, bufferOffset);
    // Serialize message field [AEB_bre_value]
    bufferOffset = _serializer.float32(obj.AEB_bre_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AEBCmd
    let len;
    let data = new AEBCmd(null);
    // Deserialize message field [head]
    data.head = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [AEB_enable]
    data.AEB_enable = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ACC_DecToStop]
    data.ACC_DecToStop = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [AEB_bre_value]
    data.AEB_bre_value = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.head);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/AEBCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4545b4dcbac8ee9bae5b6ac064ecbd8e';
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
    
    uint8   AEB_enable                 #AEB： 减速请求   0x0: no demand;0x1:
    uint8   ACC_DecToStop              #ACC请求减速到停止 0x0: no demand; 0x1: demand
    float32 AEB_bre_value              #AEB目标减速度  【-16,16】
    
    
    
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
    const resolved = new AEBCmd(null);
    if (msg.head !== undefined) {
      resolved.head = std_msgs.msg.Header.Resolve(msg.head)
    }
    else {
      resolved.head = new std_msgs.msg.Header()
    }

    if (msg.AEB_enable !== undefined) {
      resolved.AEB_enable = msg.AEB_enable;
    }
    else {
      resolved.AEB_enable = 0
    }

    if (msg.ACC_DecToStop !== undefined) {
      resolved.ACC_DecToStop = msg.ACC_DecToStop;
    }
    else {
      resolved.ACC_DecToStop = 0
    }

    if (msg.AEB_bre_value !== undefined) {
      resolved.AEB_bre_value = msg.AEB_bre_value;
    }
    else {
      resolved.AEB_bre_value = 0.0
    }

    return resolved;
    }
};

module.exports = AEBCmd;
