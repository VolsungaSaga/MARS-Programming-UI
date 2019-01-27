// Auto-generated. Do not edit!

// (in-package xbox_controller_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ControllerState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Header = null;
      this.leftY = null;
      this.rightY = null;
      this.A = null;
      this.B = null;
      this.X = null;
      this.Y = null;
      this.back = null;
      this.start = null;
      this.guide = null;
      this.leftTrigger = null;
      this.rightTrigger = null;
    }
    else {
      if (initObj.hasOwnProperty('Header')) {
        this.Header = initObj.Header
      }
      else {
        this.Header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('leftY')) {
        this.leftY = initObj.leftY
      }
      else {
        this.leftY = 0;
      }
      if (initObj.hasOwnProperty('rightY')) {
        this.rightY = initObj.rightY
      }
      else {
        this.rightY = 0;
      }
      if (initObj.hasOwnProperty('A')) {
        this.A = initObj.A
      }
      else {
        this.A = 0;
      }
      if (initObj.hasOwnProperty('B')) {
        this.B = initObj.B
      }
      else {
        this.B = 0;
      }
      if (initObj.hasOwnProperty('X')) {
        this.X = initObj.X
      }
      else {
        this.X = 0;
      }
      if (initObj.hasOwnProperty('Y')) {
        this.Y = initObj.Y
      }
      else {
        this.Y = 0;
      }
      if (initObj.hasOwnProperty('back')) {
        this.back = initObj.back
      }
      else {
        this.back = 0;
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = 0;
      }
      if (initObj.hasOwnProperty('guide')) {
        this.guide = initObj.guide
      }
      else {
        this.guide = 0;
      }
      if (initObj.hasOwnProperty('leftTrigger')) {
        this.leftTrigger = initObj.leftTrigger
      }
      else {
        this.leftTrigger = 0.0;
      }
      if (initObj.hasOwnProperty('rightTrigger')) {
        this.rightTrigger = initObj.rightTrigger
      }
      else {
        this.rightTrigger = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControllerState
    // Serialize message field [Header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.Header, buffer, bufferOffset);
    // Serialize message field [leftY]
    bufferOffset = _serializer.int16(obj.leftY, buffer, bufferOffset);
    // Serialize message field [rightY]
    bufferOffset = _serializer.int16(obj.rightY, buffer, bufferOffset);
    // Serialize message field [A]
    bufferOffset = _serializer.int16(obj.A, buffer, bufferOffset);
    // Serialize message field [B]
    bufferOffset = _serializer.int16(obj.B, buffer, bufferOffset);
    // Serialize message field [X]
    bufferOffset = _serializer.int16(obj.X, buffer, bufferOffset);
    // Serialize message field [Y]
    bufferOffset = _serializer.int16(obj.Y, buffer, bufferOffset);
    // Serialize message field [back]
    bufferOffset = _serializer.int16(obj.back, buffer, bufferOffset);
    // Serialize message field [start]
    bufferOffset = _serializer.int16(obj.start, buffer, bufferOffset);
    // Serialize message field [guide]
    bufferOffset = _serializer.int16(obj.guide, buffer, bufferOffset);
    // Serialize message field [leftTrigger]
    bufferOffset = _serializer.float32(obj.leftTrigger, buffer, bufferOffset);
    // Serialize message field [rightTrigger]
    bufferOffset = _serializer.float32(obj.rightTrigger, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllerState
    let len;
    let data = new ControllerState(null);
    // Deserialize message field [Header]
    data.Header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [leftY]
    data.leftY = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [rightY]
    data.rightY = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [A]
    data.A = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [B]
    data.B = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [X]
    data.X = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Y]
    data.Y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [back]
    data.back = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [start]
    data.start = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [guide]
    data.guide = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [leftTrigger]
    data.leftTrigger = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rightTrigger]
    data.rightTrigger = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.Header);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xbox_controller_driver/ControllerState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '241623f4c570eac23d9ad3ea0b37b80a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header Header
    
    int16 leftY
    int16 rightY
    
    int16 A
    int16 B
    int16 X
    int16 Y 
    int16 back
    int16 start
    int16 guide
    
    float32 leftTrigger
    float32 rightTrigger
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControllerState(null);
    if (msg.Header !== undefined) {
      resolved.Header = std_msgs.msg.Header.Resolve(msg.Header)
    }
    else {
      resolved.Header = new std_msgs.msg.Header()
    }

    if (msg.leftY !== undefined) {
      resolved.leftY = msg.leftY;
    }
    else {
      resolved.leftY = 0
    }

    if (msg.rightY !== undefined) {
      resolved.rightY = msg.rightY;
    }
    else {
      resolved.rightY = 0
    }

    if (msg.A !== undefined) {
      resolved.A = msg.A;
    }
    else {
      resolved.A = 0
    }

    if (msg.B !== undefined) {
      resolved.B = msg.B;
    }
    else {
      resolved.B = 0
    }

    if (msg.X !== undefined) {
      resolved.X = msg.X;
    }
    else {
      resolved.X = 0
    }

    if (msg.Y !== undefined) {
      resolved.Y = msg.Y;
    }
    else {
      resolved.Y = 0
    }

    if (msg.back !== undefined) {
      resolved.back = msg.back;
    }
    else {
      resolved.back = 0
    }

    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = 0
    }

    if (msg.guide !== undefined) {
      resolved.guide = msg.guide;
    }
    else {
      resolved.guide = 0
    }

    if (msg.leftTrigger !== undefined) {
      resolved.leftTrigger = msg.leftTrigger;
    }
    else {
      resolved.leftTrigger = 0.0
    }

    if (msg.rightTrigger !== undefined) {
      resolved.rightTrigger = msg.rightTrigger;
    }
    else {
      resolved.rightTrigger = 0.0
    }

    return resolved;
    }
};

module.exports = ControllerState;
