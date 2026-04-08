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

class mission {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clutchGear = null;
      this.clutchEngaged = null;
      this.Rotary_enable = null;
      this.Rotary_sp_up = null;
      this.Rotary_sp_contain = null;
      this.Rotary_sp_down = null;
      this.ACU_Top_Height = null;
      this.ACU_oil = null;
      this.GO_FRONT = null;
      this.GO_BACK = null;
      this.GO_LEFT = null;
      this.GO_RIGHT = null;
    }
    else {
      if (initObj.hasOwnProperty('clutchGear')) {
        this.clutchGear = initObj.clutchGear
      }
      else {
        this.clutchGear = 0;
      }
      if (initObj.hasOwnProperty('clutchEngaged')) {
        this.clutchEngaged = initObj.clutchEngaged
      }
      else {
        this.clutchEngaged = 0;
      }
      if (initObj.hasOwnProperty('Rotary_enable')) {
        this.Rotary_enable = initObj.Rotary_enable
      }
      else {
        this.Rotary_enable = 0;
      }
      if (initObj.hasOwnProperty('Rotary_sp_up')) {
        this.Rotary_sp_up = initObj.Rotary_sp_up
      }
      else {
        this.Rotary_sp_up = 0;
      }
      if (initObj.hasOwnProperty('Rotary_sp_contain')) {
        this.Rotary_sp_contain = initObj.Rotary_sp_contain
      }
      else {
        this.Rotary_sp_contain = 0;
      }
      if (initObj.hasOwnProperty('Rotary_sp_down')) {
        this.Rotary_sp_down = initObj.Rotary_sp_down
      }
      else {
        this.Rotary_sp_down = 0;
      }
      if (initObj.hasOwnProperty('ACU_Top_Height')) {
        this.ACU_Top_Height = initObj.ACU_Top_Height
      }
      else {
        this.ACU_Top_Height = 0;
      }
      if (initObj.hasOwnProperty('ACU_oil')) {
        this.ACU_oil = initObj.ACU_oil
      }
      else {
        this.ACU_oil = 0;
      }
      if (initObj.hasOwnProperty('GO_FRONT')) {
        this.GO_FRONT = initObj.GO_FRONT
      }
      else {
        this.GO_FRONT = 0;
      }
      if (initObj.hasOwnProperty('GO_BACK')) {
        this.GO_BACK = initObj.GO_BACK
      }
      else {
        this.GO_BACK = 0;
      }
      if (initObj.hasOwnProperty('GO_LEFT')) {
        this.GO_LEFT = initObj.GO_LEFT
      }
      else {
        this.GO_LEFT = 0;
      }
      if (initObj.hasOwnProperty('GO_RIGHT')) {
        this.GO_RIGHT = initObj.GO_RIGHT
      }
      else {
        this.GO_RIGHT = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mission
    // Serialize message field [clutchGear]
    bufferOffset = _serializer.uint8(obj.clutchGear, buffer, bufferOffset);
    // Serialize message field [clutchEngaged]
    bufferOffset = _serializer.uint8(obj.clutchEngaged, buffer, bufferOffset);
    // Serialize message field [Rotary_enable]
    bufferOffset = _serializer.uint8(obj.Rotary_enable, buffer, bufferOffset);
    // Serialize message field [Rotary_sp_up]
    bufferOffset = _serializer.uint8(obj.Rotary_sp_up, buffer, bufferOffset);
    // Serialize message field [Rotary_sp_contain]
    bufferOffset = _serializer.uint8(obj.Rotary_sp_contain, buffer, bufferOffset);
    // Serialize message field [Rotary_sp_down]
    bufferOffset = _serializer.uint8(obj.Rotary_sp_down, buffer, bufferOffset);
    // Serialize message field [ACU_Top_Height]
    bufferOffset = _serializer.uint8(obj.ACU_Top_Height, buffer, bufferOffset);
    // Serialize message field [ACU_oil]
    bufferOffset = _serializer.uint8(obj.ACU_oil, buffer, bufferOffset);
    // Serialize message field [GO_FRONT]
    bufferOffset = _serializer.uint16(obj.GO_FRONT, buffer, bufferOffset);
    // Serialize message field [GO_BACK]
    bufferOffset = _serializer.uint16(obj.GO_BACK, buffer, bufferOffset);
    // Serialize message field [GO_LEFT]
    bufferOffset = _serializer.uint16(obj.GO_LEFT, buffer, bufferOffset);
    // Serialize message field [GO_RIGHT]
    bufferOffset = _serializer.uint16(obj.GO_RIGHT, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mission
    let len;
    let data = new mission(null);
    // Deserialize message field [clutchGear]
    data.clutchGear = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [clutchEngaged]
    data.clutchEngaged = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Rotary_enable]
    data.Rotary_enable = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Rotary_sp_up]
    data.Rotary_sp_up = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Rotary_sp_contain]
    data.Rotary_sp_contain = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Rotary_sp_down]
    data.Rotary_sp_down = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ACU_Top_Height]
    data.ACU_Top_Height = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ACU_oil]
    data.ACU_oil = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [GO_FRONT]
    data.GO_FRONT = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [GO_BACK]
    data.GO_BACK = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [GO_LEFT]
    data.GO_LEFT = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [GO_RIGHT]
    data.GO_RIGHT = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/mission';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce8eb385a63ce66b136eb3cb9689016b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8  clutchGear        #旋耕变速箱挡位 0:低，1：高
    uint8  clutchEngaged     #旋耕使能 0:无效，1：有效
    uint8  Rotary_enable     #沤肥机使能 0：无效，1：有效
    uint8  Rotary_sp_up      #沤肥机转速提升 0：无效，1：有效
    uint8  Rotary_sp_contain #沤肥机转速保持 0：无效，1：有效
    uint8  Rotary_sp_down    #沤肥机转速下降 0：无效，1：有效
    uint8  ACU_Top_Height    #控制选耕高度 
    uint8  ACU_oil           #控制油门 
    uint16 GO_FRONT         #控制车辆前行
    uint16 GO_BACK          #控制车辆后退
    uint16 GO_LEFT          #控制车辆左转
    uint16 GO_RIGHT         #控制车辆右转
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mission(null);
    if (msg.clutchGear !== undefined) {
      resolved.clutchGear = msg.clutchGear;
    }
    else {
      resolved.clutchGear = 0
    }

    if (msg.clutchEngaged !== undefined) {
      resolved.clutchEngaged = msg.clutchEngaged;
    }
    else {
      resolved.clutchEngaged = 0
    }

    if (msg.Rotary_enable !== undefined) {
      resolved.Rotary_enable = msg.Rotary_enable;
    }
    else {
      resolved.Rotary_enable = 0
    }

    if (msg.Rotary_sp_up !== undefined) {
      resolved.Rotary_sp_up = msg.Rotary_sp_up;
    }
    else {
      resolved.Rotary_sp_up = 0
    }

    if (msg.Rotary_sp_contain !== undefined) {
      resolved.Rotary_sp_contain = msg.Rotary_sp_contain;
    }
    else {
      resolved.Rotary_sp_contain = 0
    }

    if (msg.Rotary_sp_down !== undefined) {
      resolved.Rotary_sp_down = msg.Rotary_sp_down;
    }
    else {
      resolved.Rotary_sp_down = 0
    }

    if (msg.ACU_Top_Height !== undefined) {
      resolved.ACU_Top_Height = msg.ACU_Top_Height;
    }
    else {
      resolved.ACU_Top_Height = 0
    }

    if (msg.ACU_oil !== undefined) {
      resolved.ACU_oil = msg.ACU_oil;
    }
    else {
      resolved.ACU_oil = 0
    }

    if (msg.GO_FRONT !== undefined) {
      resolved.GO_FRONT = msg.GO_FRONT;
    }
    else {
      resolved.GO_FRONT = 0
    }

    if (msg.GO_BACK !== undefined) {
      resolved.GO_BACK = msg.GO_BACK;
    }
    else {
      resolved.GO_BACK = 0
    }

    if (msg.GO_LEFT !== undefined) {
      resolved.GO_LEFT = msg.GO_LEFT;
    }
    else {
      resolved.GO_LEFT = 0
    }

    if (msg.GO_RIGHT !== undefined) {
      resolved.GO_RIGHT = msg.GO_RIGHT;
    }
    else {
      resolved.GO_RIGHT = 0
    }

    return resolved;
    }
};

module.exports = mission;
