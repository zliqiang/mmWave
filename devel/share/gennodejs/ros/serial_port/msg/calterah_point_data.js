// Auto-generated. Do not edit!

// (in-package serial_port.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class calterah_point_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame_id = null;
      this.frame_size = null;
      this.P = null;
      this.range = null;
      this.vel = null;
      this.ang = null;
      this.ang_elv = null;
    }
    else {
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = 0;
      }
      if (initObj.hasOwnProperty('frame_size')) {
        this.frame_size = initObj.frame_size
      }
      else {
        this.frame_size = 0;
      }
      if (initObj.hasOwnProperty('P')) {
        this.P = initObj.P
      }
      else {
        this.P = new Array(150).fill(0);
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = new Array(150).fill(0);
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = new Array(150).fill(0);
      }
      if (initObj.hasOwnProperty('ang')) {
        this.ang = initObj.ang
      }
      else {
        this.ang = new Array(150).fill(0);
      }
      if (initObj.hasOwnProperty('ang_elv')) {
        this.ang_elv = initObj.ang_elv
      }
      else {
        this.ang_elv = new Array(150).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type calterah_point_data
    // Serialize message field [frame_id]
    bufferOffset = _serializer.int64(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [frame_size]
    bufferOffset = _serializer.int32(obj.frame_size, buffer, bufferOffset);
    // Check that the constant length array field [P] has the right length
    if (obj.P.length !== 150) {
      throw new Error('Unable to serialize array field P - length must be 150')
    }
    // Serialize message field [P]
    bufferOffset = _arraySerializer.float32(obj.P, buffer, bufferOffset, 150);
    // Check that the constant length array field [range] has the right length
    if (obj.range.length !== 150) {
      throw new Error('Unable to serialize array field range - length must be 150')
    }
    // Serialize message field [range]
    bufferOffset = _arraySerializer.float32(obj.range, buffer, bufferOffset, 150);
    // Check that the constant length array field [vel] has the right length
    if (obj.vel.length !== 150) {
      throw new Error('Unable to serialize array field vel - length must be 150')
    }
    // Serialize message field [vel]
    bufferOffset = _arraySerializer.float32(obj.vel, buffer, bufferOffset, 150);
    // Check that the constant length array field [ang] has the right length
    if (obj.ang.length !== 150) {
      throw new Error('Unable to serialize array field ang - length must be 150')
    }
    // Serialize message field [ang]
    bufferOffset = _arraySerializer.float32(obj.ang, buffer, bufferOffset, 150);
    // Check that the constant length array field [ang_elv] has the right length
    if (obj.ang_elv.length !== 150) {
      throw new Error('Unable to serialize array field ang_elv - length must be 150')
    }
    // Serialize message field [ang_elv]
    bufferOffset = _arraySerializer.float32(obj.ang_elv, buffer, bufferOffset, 150);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type calterah_point_data
    let len;
    let data = new calterah_point_data(null);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [frame_size]
    data.frame_size = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [P]
    data.P = _arrayDeserializer.float32(buffer, bufferOffset, 150)
    // Deserialize message field [range]
    data.range = _arrayDeserializer.float32(buffer, bufferOffset, 150)
    // Deserialize message field [vel]
    data.vel = _arrayDeserializer.float32(buffer, bufferOffset, 150)
    // Deserialize message field [ang]
    data.ang = _arrayDeserializer.float32(buffer, bufferOffset, 150)
    // Deserialize message field [ang_elv]
    data.ang_elv = _arrayDeserializer.float32(buffer, bufferOffset, 150)
    return data;
  }

  static getMessageSize(object) {
    return 3012;
  }

  static datatype() {
    // Returns string type for a message object
    return 'serial_port/calterah_point_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f9b38ae16785d52e5632721cd27c921';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 frame_id
    int32 frame_size
    float32[150] P
    float32[150] range
    float32[150] vel
    float32[150] ang
    float32[150] ang_elv
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new calterah_point_data(null);
    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = 0
    }

    if (msg.frame_size !== undefined) {
      resolved.frame_size = msg.frame_size;
    }
    else {
      resolved.frame_size = 0
    }

    if (msg.P !== undefined) {
      resolved.P = msg.P;
    }
    else {
      resolved.P = new Array(150).fill(0)
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = new Array(150).fill(0)
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = new Array(150).fill(0)
    }

    if (msg.ang !== undefined) {
      resolved.ang = msg.ang;
    }
    else {
      resolved.ang = new Array(150).fill(0)
    }

    if (msg.ang_elv !== undefined) {
      resolved.ang_elv = msg.ang_elv;
    }
    else {
      resolved.ang_elv = new Array(150).fill(0)
    }

    return resolved;
    }
};

module.exports = calterah_point_data;
