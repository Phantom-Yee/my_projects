// Auto-generated. Do not edit!

// (in-package custom_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TaskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_type = null;
      this.s_start = null;
      this.s_end = null;
      this.info = null;
      this.info_2 = null;
    }
    else {
      if (initObj.hasOwnProperty('task_type')) {
        this.task_type = initObj.task_type
      }
      else {
        this.task_type = 0;
      }
      if (initObj.hasOwnProperty('s_start')) {
        this.s_start = initObj.s_start
      }
      else {
        this.s_start = 0.0;
      }
      if (initObj.hasOwnProperty('s_end')) {
        this.s_end = initObj.s_end
      }
      else {
        this.s_end = 0.0;
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = 0.0;
      }
      if (initObj.hasOwnProperty('info_2')) {
        this.info_2 = initObj.info_2
      }
      else {
        this.info_2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskRequest
    // Serialize message field [task_type]
    bufferOffset = _serializer.uint8(obj.task_type, buffer, bufferOffset);
    // Serialize message field [s_start]
    bufferOffset = _serializer.float64(obj.s_start, buffer, bufferOffset);
    // Serialize message field [s_end]
    bufferOffset = _serializer.float64(obj.s_end, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = _serializer.float64(obj.info, buffer, bufferOffset);
    // Serialize message field [info_2]
    bufferOffset = _serializer.float64(obj.info_2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskRequest
    let len;
    let data = new TaskRequest(null);
    // Deserialize message field [task_type]
    data.task_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [s_start]
    data.s_start = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [s_end]
    data.s_end = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [info_2]
    data.info_2 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 33;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/TaskRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff2a8bc5438c15453ddc518e4924ac9b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #------------------------------
    #任务请求
    #------------------------------
    uint8                   Task_Control        = 1    #农机作业任务
    uint8                   NewPathMission      = 2    #避障任务操作
    
    uint8     task_type      #任务id
    float64   s_start        #任务区间起始
    float64   s_end          #任务区间结束
    float64   info           #任务信息
    float64   info_2         #任务信息2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskRequest(null);
    if (msg.task_type !== undefined) {
      resolved.task_type = msg.task_type;
    }
    else {
      resolved.task_type = 0
    }

    if (msg.s_start !== undefined) {
      resolved.s_start = msg.s_start;
    }
    else {
      resolved.s_start = 0.0
    }

    if (msg.s_end !== undefined) {
      resolved.s_end = msg.s_end;
    }
    else {
      resolved.s_end = 0.0
    }

    if (msg.info !== undefined) {
      resolved.info = msg.info;
    }
    else {
      resolved.info = 0.0
    }

    if (msg.info_2 !== undefined) {
      resolved.info_2 = msg.info_2;
    }
    else {
      resolved.info_2 = 0.0
    }

    return resolved;
    }
};

// Constants for message
TaskRequest.Constants = {
  TASK_CONTROL: 1,
  NEWPATHMISSION: 2,
}

class TaskResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isSuccess = null;
    }
    else {
      if (initObj.hasOwnProperty('isSuccess')) {
        this.isSuccess = initObj.isSuccess
      }
      else {
        this.isSuccess = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskResponse
    // Serialize message field [isSuccess]
    bufferOffset = _serializer.bool(obj.isSuccess, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskResponse
    let len;
    let data = new TaskResponse(null);
    // Deserialize message field [isSuccess]
    data.isSuccess = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/TaskResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7dbd1de57ef8fd16c2d4ef28e12e701';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isSuccess
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskResponse(null);
    if (msg.isSuccess !== undefined) {
      resolved.isSuccess = msg.isSuccess;
    }
    else {
      resolved.isSuccess = false
    }

    return resolved;
    }
};

module.exports = {
  Request: TaskRequest,
  Response: TaskResponse,
  md5sum() { return 'bd2e6ee9570673e4c686fc680fef4544'; },
  datatype() { return 'custom_msgs/Task'; }
};
