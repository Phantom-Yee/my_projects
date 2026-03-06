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

class PRNDShiftCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head = null;
      this.APA_TransPRNDShiftEnable = null;
      this.APA_TransPRNDShiftReqValid = null;
      this.APA_TransPRNDShiftRequest = null;
    }
    else {
      if (initObj.hasOwnProperty('head')) {
        this.head = initObj.head
      }
      else {
        this.head = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('APA_TransPRNDShiftEnable')) {
        this.APA_TransPRNDShiftEnable = initObj.APA_TransPRNDShiftEnable
      }
      else {
        this.APA_TransPRNDShiftEnable = 0;
      }
      if (initObj.hasOwnProperty('APA_TransPRNDShiftReqValid')) {
        this.APA_TransPRNDShiftReqValid = initObj.APA_TransPRNDShiftReqValid
      }
      else {
        this.APA_TransPRNDShiftReqValid = 0;
      }
      if (initObj.hasOwnProperty('APA_TransPRNDShiftRequest')) {
        this.APA_TransPRNDShiftRequest = initObj.APA_TransPRNDShiftRequest
      }
      else {
        this.APA_TransPRNDShiftRequest = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PRNDShiftCmd
    // Serialize message field [head]
    bufferOffset = std_msgs.msg.Header.serialize(obj.head, buffer, bufferOffset);
    // Serialize message field [APA_TransPRNDShiftEnable]
    bufferOffset = _serializer.uint8(obj.APA_TransPRNDShiftEnable, buffer, bufferOffset);
    // Serialize message field [APA_TransPRNDShiftReqValid]
    bufferOffset = _serializer.uint8(obj.APA_TransPRNDShiftReqValid, buffer, bufferOffset);
    // Serialize message field [APA_TransPRNDShiftRequest]
    bufferOffset = _serializer.uint8(obj.APA_TransPRNDShiftRequest, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PRNDShiftCmd
    let len;
    let data = new PRNDShiftCmd(null);
    // Deserialize message field [head]
    data.head = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [APA_TransPRNDShiftEnable]
    data.APA_TransPRNDShiftEnable = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [APA_TransPRNDShiftReqValid]
    data.APA_TransPRNDShiftReqValid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [APA_TransPRNDShiftRequest]
    data.APA_TransPRNDShiftRequest = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.head);
    return length + 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/PRNDShiftCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c04489b61cb0ba49e76093963fa7801';
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
    
    uint8 APA_TransPRNDShiftEnable         #->>档位：请求换挡可控 0x1 disable able 0x1 Enable   ACM_APA Request Enable = 0x1:Control enabled
    uint8 APA_TransPRNDShiftReqValid       #->>档位：换挡使能   0x0 = Invalid 0x1=Valid
    uint8 APA_TransPRNDShiftRequest        #->>档位：换挡档位值 0x0=NoRequest;or 0x1=P ;or 0x2= R ; 0x3=N 0x4=D 0x5 :invalid
    
    
    
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
    const resolved = new PRNDShiftCmd(null);
    if (msg.head !== undefined) {
      resolved.head = std_msgs.msg.Header.Resolve(msg.head)
    }
    else {
      resolved.head = new std_msgs.msg.Header()
    }

    if (msg.APA_TransPRNDShiftEnable !== undefined) {
      resolved.APA_TransPRNDShiftEnable = msg.APA_TransPRNDShiftEnable;
    }
    else {
      resolved.APA_TransPRNDShiftEnable = 0
    }

    if (msg.APA_TransPRNDShiftReqValid !== undefined) {
      resolved.APA_TransPRNDShiftReqValid = msg.APA_TransPRNDShiftReqValid;
    }
    else {
      resolved.APA_TransPRNDShiftReqValid = 0
    }

    if (msg.APA_TransPRNDShiftRequest !== undefined) {
      resolved.APA_TransPRNDShiftRequest = msg.APA_TransPRNDShiftRequest;
    }
    else {
      resolved.APA_TransPRNDShiftRequest = 0
    }

    return resolved;
    }
};

module.exports = PRNDShiftCmd;
