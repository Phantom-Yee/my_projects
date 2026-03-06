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

class TrqBreCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head = null;
      this.trq_enable = null;
      this.trq_value_2 = null;
      this.trq_value_3 = null;
      this.bre_enable = null;
      this.bre_value = null;
      this.ACC_DecToStop = null;
      this.ACC_Driveoff = null;
    }
    else {
      if (initObj.hasOwnProperty('head')) {
        this.head = initObj.head
      }
      else {
        this.head = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('trq_enable')) {
        this.trq_enable = initObj.trq_enable
      }
      else {
        this.trq_enable = 0;
      }
      if (initObj.hasOwnProperty('trq_value_2')) {
        this.trq_value_2 = initObj.trq_value_2
      }
      else {
        this.trq_value_2 = 0;
      }
      if (initObj.hasOwnProperty('trq_value_3')) {
        this.trq_value_3 = initObj.trq_value_3
      }
      else {
        this.trq_value_3 = 0.0;
      }
      if (initObj.hasOwnProperty('bre_enable')) {
        this.bre_enable = initObj.bre_enable
      }
      else {
        this.bre_enable = 0;
      }
      if (initObj.hasOwnProperty('bre_value')) {
        this.bre_value = initObj.bre_value
      }
      else {
        this.bre_value = 0.0;
      }
      if (initObj.hasOwnProperty('ACC_DecToStop')) {
        this.ACC_DecToStop = initObj.ACC_DecToStop
      }
      else {
        this.ACC_DecToStop = 0;
      }
      if (initObj.hasOwnProperty('ACC_Driveoff')) {
        this.ACC_Driveoff = initObj.ACC_Driveoff
      }
      else {
        this.ACC_Driveoff = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrqBreCmd
    // Serialize message field [head]
    bufferOffset = std_msgs.msg.Header.serialize(obj.head, buffer, bufferOffset);
    // Serialize message field [trq_enable]
    bufferOffset = _serializer.uint8(obj.trq_enable, buffer, bufferOffset);
    // Serialize message field [trq_value_2]
    bufferOffset = _serializer.uint32(obj.trq_value_2, buffer, bufferOffset);
    // Serialize message field [trq_value_3]
    bufferOffset = _serializer.float32(obj.trq_value_3, buffer, bufferOffset);
    // Serialize message field [bre_enable]
    bufferOffset = _serializer.uint8(obj.bre_enable, buffer, bufferOffset);
    // Serialize message field [bre_value]
    bufferOffset = _serializer.float32(obj.bre_value, buffer, bufferOffset);
    // Serialize message field [ACC_DecToStop]
    bufferOffset = _serializer.uint8(obj.ACC_DecToStop, buffer, bufferOffset);
    // Serialize message field [ACC_Driveoff]
    bufferOffset = _serializer.uint8(obj.ACC_Driveoff, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrqBreCmd
    let len;
    let data = new TrqBreCmd(null);
    // Deserialize message field [head]
    data.head = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [trq_enable]
    data.trq_enable = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [trq_value_2]
    data.trq_value_2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [trq_value_3]
    data.trq_value_3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bre_enable]
    data.bre_enable = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bre_value]
    data.bre_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ACC_DecToStop]
    data.ACC_DecToStop = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ACC_Driveoff]
    data.ACC_Driveoff = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.head);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/TrqBreCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f4c067bce3a4adbe38f794b306a03fb3';
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
    
    #float32 DeAccReq      
    #float32 AccReq
    #float32 SptReq
    
    uint8   trq_enable                    #发动机驱动扭矩是否使能
    uint32  trq_value_2                   #->>扭矩:所需扭矩值     #2号车使用
    float32 trq_value_3                   #->>扭矩:所需扭矩百分比  #3号车使用
    uint8   bre_enable                    #刹车是否使能
    float32 bre_value                     #刹车值
    uint8   ACC_DecToStop                 #ACC请求减速到停止 0x0: no demand; 0x1: demand 车子按自己的减速度平滑停车 不受发送的其他指令控制
    uint8   ACC_Driveoff                  #释放汽缸压力，必须与ACC_DecToStop配合使
    
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
    const resolved = new TrqBreCmd(null);
    if (msg.head !== undefined) {
      resolved.head = std_msgs.msg.Header.Resolve(msg.head)
    }
    else {
      resolved.head = new std_msgs.msg.Header()
    }

    if (msg.trq_enable !== undefined) {
      resolved.trq_enable = msg.trq_enable;
    }
    else {
      resolved.trq_enable = 0
    }

    if (msg.trq_value_2 !== undefined) {
      resolved.trq_value_2 = msg.trq_value_2;
    }
    else {
      resolved.trq_value_2 = 0
    }

    if (msg.trq_value_3 !== undefined) {
      resolved.trq_value_3 = msg.trq_value_3;
    }
    else {
      resolved.trq_value_3 = 0.0
    }

    if (msg.bre_enable !== undefined) {
      resolved.bre_enable = msg.bre_enable;
    }
    else {
      resolved.bre_enable = 0
    }

    if (msg.bre_value !== undefined) {
      resolved.bre_value = msg.bre_value;
    }
    else {
      resolved.bre_value = 0.0
    }

    if (msg.ACC_DecToStop !== undefined) {
      resolved.ACC_DecToStop = msg.ACC_DecToStop;
    }
    else {
      resolved.ACC_DecToStop = 0
    }

    if (msg.ACC_Driveoff !== undefined) {
      resolved.ACC_Driveoff = msg.ACC_Driveoff;
    }
    else {
      resolved.ACC_Driveoff = 0
    }

    return resolved;
    }
};

module.exports = TrqBreCmd;
