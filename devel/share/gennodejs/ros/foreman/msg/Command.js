// Auto-generated. Do not edit!

// (in-package foreman.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.preciseMode = null;
      this.eeOrientationMode = null;
      this.jointMode = null;
      this.targetJoint = null;
      this.x = null;
      this.y = null;
      this.z = null;
    }
    else {
      if (initObj.hasOwnProperty('preciseMode')) {
        this.preciseMode = initObj.preciseMode
      }
      else {
        this.preciseMode = false;
      }
      if (initObj.hasOwnProperty('eeOrientationMode')) {
        this.eeOrientationMode = initObj.eeOrientationMode
      }
      else {
        this.eeOrientationMode = false;
      }
      if (initObj.hasOwnProperty('jointMode')) {
        this.jointMode = initObj.jointMode
      }
      else {
        this.jointMode = false;
      }
      if (initObj.hasOwnProperty('targetJoint')) {
        this.targetJoint = initObj.targetJoint
      }
      else {
        this.targetJoint = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Command
    // Serialize message field [preciseMode]
    bufferOffset = _serializer.bool(obj.preciseMode, buffer, bufferOffset);
    // Serialize message field [eeOrientationMode]
    bufferOffset = _serializer.bool(obj.eeOrientationMode, buffer, bufferOffset);
    // Serialize message field [jointMode]
    bufferOffset = _serializer.bool(obj.jointMode, buffer, bufferOffset);
    // Serialize message field [targetJoint]
    bufferOffset = _serializer.uint32(obj.targetJoint, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Command
    let len;
    let data = new Command(null);
    // Deserialize message field [preciseMode]
    data.preciseMode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [eeOrientationMode]
    data.eeOrientationMode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [jointMode]
    data.jointMode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [targetJoint]
    data.targetJoint = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'foreman/Command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e981757b6982377442dcf4f0b1a85562';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool preciseMode
    bool eeOrientationMode 
    bool jointMode
    uint32 targetJoint
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Command(null);
    if (msg.preciseMode !== undefined) {
      resolved.preciseMode = msg.preciseMode;
    }
    else {
      resolved.preciseMode = false
    }

    if (msg.eeOrientationMode !== undefined) {
      resolved.eeOrientationMode = msg.eeOrientationMode;
    }
    else {
      resolved.eeOrientationMode = false
    }

    if (msg.jointMode !== undefined) {
      resolved.jointMode = msg.jointMode;
    }
    else {
      resolved.jointMode = false
    }

    if (msg.targetJoint !== undefined) {
      resolved.targetJoint = msg.targetJoint;
    }
    else {
      resolved.targetJoint = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    return resolved;
    }
};

module.exports = Command;
