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

class BS2PC {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.tujuan_x = null;
      this.tujuan_y = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('tujuan_x')) {
        this.tujuan_x = initObj.tujuan_x
      }
      else {
        this.tujuan_x = 0;
      }
      if (initObj.hasOwnProperty('tujuan_y')) {
        this.tujuan_y = initObj.tujuan_y
      }
      else {
        this.tujuan_y = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BS2PC
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    // Serialize message field [tujuan_x]
    bufferOffset = _serializer.int16(obj.tujuan_x, buffer, bufferOffset);
    // Serialize message field [tujuan_y]
    bufferOffset = _serializer.int16(obj.tujuan_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BS2PC
    let len;
    let data = new BS2PC(null);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [tujuan_x]
    data.tujuan_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [tujuan_y]
    data.tujuan_y = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'IRIS24/BS2PC';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9347be61b65295736981e367dd02681';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 status
    int16 tujuan_x
    int16 tujuan_y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BS2PC(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.tujuan_x !== undefined) {
      resolved.tujuan_x = msg.tujuan_x;
    }
    else {
      resolved.tujuan_x = 0
    }

    if (msg.tujuan_y !== undefined) {
      resolved.tujuan_y = msg.tujuan_y;
    }
    else {
      resolved.tujuan_y = 0
    }

    return resolved;
    }
};

module.exports = BS2PC;
