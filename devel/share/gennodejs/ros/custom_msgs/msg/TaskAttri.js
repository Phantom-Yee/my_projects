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

class TaskAttri {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id_task = null;
      this.task_type = null;
      this.start_s = null;
      this.end_s = null;
      this.notes = null;
    }
    else {
      if (initObj.hasOwnProperty('id_task')) {
        this.id_task = initObj.id_task
      }
      else {
        this.id_task = 0;
      }
      if (initObj.hasOwnProperty('task_type')) {
        this.task_type = initObj.task_type
      }
      else {
        this.task_type = 0;
      }
      if (initObj.hasOwnProperty('start_s')) {
        this.start_s = initObj.start_s
      }
      else {
        this.start_s = 0.0;
      }
      if (initObj.hasOwnProperty('end_s')) {
        this.end_s = initObj.end_s
      }
      else {
        this.end_s = 0.0;
      }
      if (initObj.hasOwnProperty('notes')) {
        this.notes = initObj.notes
      }
      else {
        this.notes = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskAttri
    // Serialize message field [id_task]
    bufferOffset = _serializer.int32(obj.id_task, buffer, bufferOffset);
    // Serialize message field [task_type]
    bufferOffset = _serializer.int32(obj.task_type, buffer, bufferOffset);
    // Serialize message field [start_s]
    bufferOffset = _serializer.float32(obj.start_s, buffer, bufferOffset);
    // Serialize message field [end_s]
    bufferOffset = _serializer.float32(obj.end_s, buffer, bufferOffset);
    // Serialize message field [notes]
    bufferOffset = _serializer.string(obj.notes, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskAttri
    let len;
    let data = new TaskAttri(null);
    // Deserialize message field [id_task]
    data.id_task = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [task_type]
    data.task_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [start_s]
    data.start_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [end_s]
    data.end_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [notes]
    data.notes = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.notes);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/TaskAttri';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3c6d3805b1b3d7882624a5d472c2497';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #---------------------------------------------------------------
    # 作者 ：lsxing
    # 时间 ：2020.12.12
    # 版权 ：重庆邮电大学自动化学院汽车电子工程中心智能车辆技术团队
    # 说明 ：描述任务属性的消息结构
    #----------------------------------------------------------------   
    
        int32 id_task       #任务id
    
        int32 task_type     #任务类型
    
        float32 start_s     #任务区间
        float32 end_s       
    
        string notes       #任务说明
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskAttri(null);
    if (msg.id_task !== undefined) {
      resolved.id_task = msg.id_task;
    }
    else {
      resolved.id_task = 0
    }

    if (msg.task_type !== undefined) {
      resolved.task_type = msg.task_type;
    }
    else {
      resolved.task_type = 0
    }

    if (msg.start_s !== undefined) {
      resolved.start_s = msg.start_s;
    }
    else {
      resolved.start_s = 0.0
    }

    if (msg.end_s !== undefined) {
      resolved.end_s = msg.end_s;
    }
    else {
      resolved.end_s = 0.0
    }

    if (msg.notes !== undefined) {
      resolved.notes = msg.notes;
    }
    else {
      resolved.notes = ''
    }

    return resolved;
    }
};

module.exports = TaskAttri;
