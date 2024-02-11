// Auto-generated. Do not edit!

// (in-package IRIS24.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PC2BS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos_x = null;
      this.pos_y = null;
      this.pos_theta = null;
      this.v_x = null;
      this.v_y = null;
      this.v_theta = null;
      this.bola_x = null;
      this.bola_y = null;
    }
    else {
      if (initObj.hasOwnProperty('pos_x')) {
        this.pos_x = initObj.pos_x
      }
      else {
        this.pos_x = 0;
      }
      if (initObj.hasOwnProperty('pos_y')) {
        this.pos_y = initObj.pos_y
      }
      else {
        this.pos_y = 0;
      }
      if (initObj.hasOwnProperty('pos_theta')) {
        this.pos_theta = initObj.pos_theta
      }
      else {
        this.pos_theta = 0;
      }
      if (initObj.hasOwnProperty('v_x')) {
        this.v_x = initObj.v_x
      }
      else {
        this.v_x = 0;
      }
      if (initObj.hasOwnProperty('v_y')) {
        this.v_y = initObj.v_y
      }
      else {
        this.v_y = 0;
      }
      if (initObj.hasOwnProperty('v_theta')) {
        this.v_theta = initObj.v_theta
      }
      else {
        this.v_theta = 0;
      }
      if (initObj.hasOwnProperty('bola_x')) {
        this.bola_x = initObj.bola_x
      }
      else {
        this.bola_x = 0;
      }
      if (initObj.hasOwnProperty('bola_y')) {
        this.bola_y = initObj.bola_y
      }
      else {
        this.bola_y = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PC2BS
    // Serialize message field [pos_x]
    bufferOffset = _serializer.int16(obj.pos_x, buffer, bufferOffset);
    // Serialize message field [pos_y]
    bufferOffset = _serializer.int16(obj.pos_y, buffer, bufferOffset);
    // Serialize message field [pos_theta]
    bufferOffset = _serializer.int16(obj.pos_theta, buffer, bufferOffset);
    // Serialize message field [v_x]
    bufferOffset = _serializer.int16(obj.v_x, buffer, bufferOffset);
    // Serialize message field [v_y]
    bufferOffset = _serializer.int16(obj.v_y, buffer, bufferOffset);
    // Serialize message field [v_theta]
    bufferOffset = _serializer.int16(obj.v_theta, buffer, bufferOffset);
    // Serialize message field [bola_x]
    bufferOffset = _serializer.int16(obj.bola_x, buffer, bufferOffset);
    // Serialize message field [bola_y]
    bufferOffset = _serializer.int16(obj.bola_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PC2BS
    let len;
    let data = new PC2BS(null);
    // Deserialize message field [pos_x]
    data.pos_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pos_y]
    data.pos_y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pos_theta]
    data.pos_theta = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [v_x]
    data.v_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [v_y]
    data.v_y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [v_theta]
    data.v_theta = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [bola_x]
    data.bola_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [bola_y]
    data.bola_y = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'IRIS24/PC2BS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a53a747ba62c0bdacb7a65cdfc72b39';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 pos_x
    int16 pos_y
    int16 pos_theta
    int16 v_x
    int16 v_y
    int16 v_theta
    int16 bola_x
    int16 bola_y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PC2BS(null);
    if (msg.pos_x !== undefined) {
      resolved.pos_x = msg.pos_x;
    }
    else {
      resolved.pos_x = 0
    }

    if (msg.pos_y !== undefined) {
      resolved.pos_y = msg.pos_y;
    }
    else {
      resolved.pos_y = 0
    }

    if (msg.pos_theta !== undefined) {
      resolved.pos_theta = msg.pos_theta;
    }
    else {
      resolved.pos_theta = 0
    }

    if (msg.v_x !== undefined) {
      resolved.v_x = msg.v_x;
    }
    else {
      resolved.v_x = 0
    }

    if (msg.v_y !== undefined) {
      resolved.v_y = msg.v_y;
    }
    else {
      resolved.v_y = 0
    }

    if (msg.v_theta !== undefined) {
      resolved.v_theta = msg.v_theta;
    }
    else {
      resolved.v_theta = 0
    }

    if (msg.bola_x !== undefined) {
      resolved.bola_x = msg.bola_x;
    }
    else {
      resolved.bola_x = 0
    }

    if (msg.bola_y !== undefined) {
      resolved.bola_y = msg.bola_y;
    }
    else {
      resolved.bola_y = 0
    }

    return resolved;
    }
};

module.exports = PC2BS;
