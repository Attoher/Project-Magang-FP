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

class TT {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pindahbola_x = null;
      this.pindahbola_y = null;
    }
    else {
      if (initObj.hasOwnProperty('pindahbola_x')) {
        this.pindahbola_x = initObj.pindahbola_x
      }
      else {
        this.pindahbola_x = 0;
      }
      if (initObj.hasOwnProperty('pindahbola_y')) {
        this.pindahbola_y = initObj.pindahbola_y
      }
      else {
        this.pindahbola_y = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TT
    // Serialize message field [pindahbola_x]
    bufferOffset = _serializer.int16(obj.pindahbola_x, buffer, bufferOffset);
    // Serialize message field [pindahbola_y]
    bufferOffset = _serializer.int16(obj.pindahbola_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TT
    let len;
    let data = new TT(null);
    // Deserialize message field [pindahbola_x]
    data.pindahbola_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pindahbola_y]
    data.pindahbola_y = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'IRIS24/TT';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42509896b73070f28322acd500e78fe5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 pindahbola_x
    int16 pindahbola_y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TT(null);
    if (msg.pindahbola_x !== undefined) {
      resolved.pindahbola_x = msg.pindahbola_x;
    }
    else {
      resolved.pindahbola_x = 0
    }

    if (msg.pindahbola_y !== undefined) {
      resolved.pindahbola_y = msg.pindahbola_y;
    }
    else {
      resolved.pindahbola_y = 0
    }

    return resolved;
    }
};

module.exports = TT;
