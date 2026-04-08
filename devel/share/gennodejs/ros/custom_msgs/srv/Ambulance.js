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

class AmbulanceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AmbulanceRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AmbulanceRequest
    let len;
    let data = new AmbulanceRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/AmbulanceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #------------------------------
    #救护车请求
    #------------------------------
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AmbulanceRequest(null);
    return resolved;
    }
};

class AmbulanceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.IsAmbulance = null;
    }
    else {
      if (initObj.hasOwnProperty('IsAmbulance')) {
        this.IsAmbulance = initObj.IsAmbulance
      }
      else {
        this.IsAmbulance = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AmbulanceResponse
    // Serialize message field [IsAmbulance]
    bufferOffset = _serializer.bool(obj.IsAmbulance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AmbulanceResponse
    let len;
    let data = new AmbulanceResponse(null);
    // Deserialize message field [IsAmbulance]
    data.IsAmbulance = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/AmbulanceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd2b9f78e4db8bc60eda8a99bc31095fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool IsAmbulance          #是否有救护车 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AmbulanceResponse(null);
    if (msg.IsAmbulance !== undefined) {
      resolved.IsAmbulance = msg.IsAmbulance;
    }
    else {
      resolved.IsAmbulance = false
    }

    return resolved;
    }
};

module.exports = {
  Request: AmbulanceRequest,
  Response: AmbulanceResponse,
  md5sum() { return 'd2b9f78e4db8bc60eda8a99bc31095fc'; },
  datatype() { return 'custom_msgs/Ambulance'; }
};
