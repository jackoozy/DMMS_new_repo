// Auto-generated. Do not edit!

// (in-package foreman_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

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
      this.incrementQ = null;
      this.decrementQ = null;
    }
    else {
      if (initObj.hasOwnProperty('preciseMode')) {
        this.preciseMode = initObj.preciseMode
      }
      else {
        this.preciseMode = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('eeOrientationMode')) {
        this.eeOrientationMode = initObj.eeOrientationMode
      }
      else {
        this.eeOrientationMode = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('jointMode')) {
        this.jointMode = initObj.jointMode
      }
      else {
        this.jointMode = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('targetJoint')) {
        this.targetJoint = initObj.targetJoint
      }
      else {
        this.targetJoint = new std_msgs.msg.Int8();
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('incrementQ')) {
        this.incrementQ = initObj.incrementQ
      }
      else {
        this.incrementQ = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('decrementQ')) {
        this.decrementQ = initObj.decrementQ
      }
      else {
        this.decrementQ = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Command
    // Serialize message field [preciseMode]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.preciseMode, buffer, bufferOffset);
    // Serialize message field [eeOrientationMode]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.eeOrientationMode, buffer, bufferOffset);
    // Serialize message field [jointMode]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.jointMode, buffer, bufferOffset);
    // Serialize message field [targetJoint]
    bufferOffset = std_msgs.msg.Int8.serialize(obj.targetJoint, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.z, buffer, bufferOffset);
    // Serialize message field [incrementQ]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.incrementQ, buffer, bufferOffset);
    // Serialize message field [decrementQ]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.decrementQ, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Command
    let len;
    let data = new Command(null);
    // Deserialize message field [preciseMode]
    data.preciseMode = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [eeOrientationMode]
    data.eeOrientationMode = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [jointMode]
    data.jointMode = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [targetJoint]
    data.targetJoint = std_msgs.msg.Int8.deserialize(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [incrementQ]
    data.incrementQ = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [decrementQ]
    data.decrementQ = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'foreman_msg/Command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ea48707806b8e8fa7ee906cce3e1a86';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Bool preciseMode
    std_msgs/Bool eeOrientationMode 
    std_msgs/Bool jointMode
    std_msgs/Int8 targetJoint
    std_msgs/Float32 x
    std_msgs/Float32 y
    std_msgs/Float32 z
    std_msgs/Bool incrementQ
    std_msgs/Bool decrementQ
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    ================================================================================
    MSG: std_msgs/Int8
    int8 data
    
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Command(null);
    if (msg.preciseMode !== undefined) {
      resolved.preciseMode = std_msgs.msg.Bool.Resolve(msg.preciseMode)
    }
    else {
      resolved.preciseMode = new std_msgs.msg.Bool()
    }

    if (msg.eeOrientationMode !== undefined) {
      resolved.eeOrientationMode = std_msgs.msg.Bool.Resolve(msg.eeOrientationMode)
    }
    else {
      resolved.eeOrientationMode = new std_msgs.msg.Bool()
    }

    if (msg.jointMode !== undefined) {
      resolved.jointMode = std_msgs.msg.Bool.Resolve(msg.jointMode)
    }
    else {
      resolved.jointMode = new std_msgs.msg.Bool()
    }

    if (msg.targetJoint !== undefined) {
      resolved.targetJoint = std_msgs.msg.Int8.Resolve(msg.targetJoint)
    }
    else {
      resolved.targetJoint = new std_msgs.msg.Int8()
    }

    if (msg.x !== undefined) {
      resolved.x = std_msgs.msg.Float32.Resolve(msg.x)
    }
    else {
      resolved.x = new std_msgs.msg.Float32()
    }

    if (msg.y !== undefined) {
      resolved.y = std_msgs.msg.Float32.Resolve(msg.y)
    }
    else {
      resolved.y = new std_msgs.msg.Float32()
    }

    if (msg.z !== undefined) {
      resolved.z = std_msgs.msg.Float32.Resolve(msg.z)
    }
    else {
      resolved.z = new std_msgs.msg.Float32()
    }

    if (msg.incrementQ !== undefined) {
      resolved.incrementQ = std_msgs.msg.Bool.Resolve(msg.incrementQ)
    }
    else {
      resolved.incrementQ = new std_msgs.msg.Bool()
    }

    if (msg.decrementQ !== undefined) {
      resolved.decrementQ = std_msgs.msg.Bool.Resolve(msg.decrementQ)
    }
    else {
      resolved.decrementQ = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

module.exports = Command;
