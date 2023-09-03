// Auto-generated. Do not edit!

// (in-package hrwros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ConvertMeterToFeetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance_meters = null;
    }
    else {
      if (initObj.hasOwnProperty('distance_meters')) {
        this.distance_meters = initObj.distance_meters
      }
      else {
        this.distance_meters = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConvertMeterToFeetRequest
    // Serialize message field [distance_meters]
    bufferOffset = _serializer.float64(obj.distance_meters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConvertMeterToFeetRequest
    let len;
    let data = new ConvertMeterToFeetRequest(null);
    // Deserialize message field [distance_meters]
    data.distance_meters = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hrwros_msgs/ConvertMeterToFeetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ddb8ee0ae0b7f759ed1a69869c0f0d7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 distance_meters     # Request message: Distance in (m) to be converted to feet
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConvertMeterToFeetRequest(null);
    if (msg.distance_meters !== undefined) {
      resolved.distance_meters = msg.distance_meters;
    }
    else {
      resolved.distance_meters = 0.0
    }

    return resolved;
    }
};

class ConvertMeterToFeetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance_feet = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('distance_feet')) {
        this.distance_feet = initObj.distance_feet
      }
      else {
        this.distance_feet = 0.0;
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConvertMeterToFeetResponse
    // Serialize message field [distance_feet]
    bufferOffset = _serializer.float64(obj.distance_feet, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConvertMeterToFeetResponse
    let len;
    let data = new ConvertMeterToFeetResponse(null);
    // Deserialize message field [distance_feet]
    data.distance_feet = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hrwros_msgs/ConvertMeterToFeetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1e3afbb19bd7a378a88d85bbef815e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 distance_feet       # Response message: distance in feet after conversion
    bool success                # response message: success or failure
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConvertMeterToFeetResponse(null);
    if (msg.distance_feet !== undefined) {
      resolved.distance_feet = msg.distance_feet;
    }
    else {
      resolved.distance_feet = 0.0
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ConvertMeterToFeetRequest,
  Response: ConvertMeterToFeetResponse,
  md5sum() { return '310609c29786ef3922a8f8517575f397'; },
  datatype() { return 'hrwros_msgs/ConvertMeterToFeet'; }
};
