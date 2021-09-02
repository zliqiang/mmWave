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

class TI_vital_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.version = null;
      this.totalPacketLen = null;
      this.platform = null;
      this.frameNumber = null;
      this.timeCpuCycles = null;
      this.numDetcetedObj = null;
      this.numTLVs = null;
      this.rangeBinIndexMax = null;
      this.rangeBinIndexPhase = null;
      this.maxVal = null;
      this.processingCyclesOut = null;
      this.rangeBinStartIndex = null;
      this.rangeBinEndIndex = null;
      this.unwrapPhasePeak_mm = null;
      this.outputFilterBreathOut = null;
      this.outputFilterHeartOut = null;
      this.heartRateEst_FFT = null;
      this.heartRateEst_FFT_4Hz = null;
      this.heartRateEst_xCorr = null;
      this.heartRateEst_peakCount = null;
      this.breathingRateEst_FFT = null;
      this.breathingRateEst_xCorr = null;
      this.breathingRateEst_peakCount = null;
      this.confidenceMetricBreathOut = null;
      this.confidenceMetricBreathOut_xCorr = null;
      this.confidenceMetricHeartOut = null;
      this.confidenceMetricHeartOut_4Hz = null;
      this.confidenceMetricHeartOut_xCorr = null;
      this.sumEnergyBreathWfm = null;
      this.sumEnergyHeartWfm = null;
      this.motionDetectedFlag = null;
      this.Reserved0 = null;
      this.Reserved1 = null;
      this.Reserved2 = null;
      this.Reserved3 = null;
      this.Reserved4 = null;
      this.Reserved5 = null;
      this.Reserved6 = null;
      this.Reserved7 = null;
      this.Reserved8 = null;
      this.Reserved9 = null;
    }
    else {
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = 0;
      }
      if (initObj.hasOwnProperty('totalPacketLen')) {
        this.totalPacketLen = initObj.totalPacketLen
      }
      else {
        this.totalPacketLen = 0;
      }
      if (initObj.hasOwnProperty('platform')) {
        this.platform = initObj.platform
      }
      else {
        this.platform = 0;
      }
      if (initObj.hasOwnProperty('frameNumber')) {
        this.frameNumber = initObj.frameNumber
      }
      else {
        this.frameNumber = 0;
      }
      if (initObj.hasOwnProperty('timeCpuCycles')) {
        this.timeCpuCycles = initObj.timeCpuCycles
      }
      else {
        this.timeCpuCycles = 0;
      }
      if (initObj.hasOwnProperty('numDetcetedObj')) {
        this.numDetcetedObj = initObj.numDetcetedObj
      }
      else {
        this.numDetcetedObj = 0;
      }
      if (initObj.hasOwnProperty('numTLVs')) {
        this.numTLVs = initObj.numTLVs
      }
      else {
        this.numTLVs = 0;
      }
      if (initObj.hasOwnProperty('rangeBinIndexMax')) {
        this.rangeBinIndexMax = initObj.rangeBinIndexMax
      }
      else {
        this.rangeBinIndexMax = 0;
      }
      if (initObj.hasOwnProperty('rangeBinIndexPhase')) {
        this.rangeBinIndexPhase = initObj.rangeBinIndexPhase
      }
      else {
        this.rangeBinIndexPhase = 0;
      }
      if (initObj.hasOwnProperty('maxVal')) {
        this.maxVal = initObj.maxVal
      }
      else {
        this.maxVal = 0.0;
      }
      if (initObj.hasOwnProperty('processingCyclesOut')) {
        this.processingCyclesOut = initObj.processingCyclesOut
      }
      else {
        this.processingCyclesOut = 0;
      }
      if (initObj.hasOwnProperty('rangeBinStartIndex')) {
        this.rangeBinStartIndex = initObj.rangeBinStartIndex
      }
      else {
        this.rangeBinStartIndex = 0;
      }
      if (initObj.hasOwnProperty('rangeBinEndIndex')) {
        this.rangeBinEndIndex = initObj.rangeBinEndIndex
      }
      else {
        this.rangeBinEndIndex = 0;
      }
      if (initObj.hasOwnProperty('unwrapPhasePeak_mm')) {
        this.unwrapPhasePeak_mm = initObj.unwrapPhasePeak_mm
      }
      else {
        this.unwrapPhasePeak_mm = 0.0;
      }
      if (initObj.hasOwnProperty('outputFilterBreathOut')) {
        this.outputFilterBreathOut = initObj.outputFilterBreathOut
      }
      else {
        this.outputFilterBreathOut = 0.0;
      }
      if (initObj.hasOwnProperty('outputFilterHeartOut')) {
        this.outputFilterHeartOut = initObj.outputFilterHeartOut
      }
      else {
        this.outputFilterHeartOut = 0.0;
      }
      if (initObj.hasOwnProperty('heartRateEst_FFT')) {
        this.heartRateEst_FFT = initObj.heartRateEst_FFT
      }
      else {
        this.heartRateEst_FFT = 0.0;
      }
      if (initObj.hasOwnProperty('heartRateEst_FFT_4Hz')) {
        this.heartRateEst_FFT_4Hz = initObj.heartRateEst_FFT_4Hz
      }
      else {
        this.heartRateEst_FFT_4Hz = 0.0;
      }
      if (initObj.hasOwnProperty('heartRateEst_xCorr')) {
        this.heartRateEst_xCorr = initObj.heartRateEst_xCorr
      }
      else {
        this.heartRateEst_xCorr = 0.0;
      }
      if (initObj.hasOwnProperty('heartRateEst_peakCount')) {
        this.heartRateEst_peakCount = initObj.heartRateEst_peakCount
      }
      else {
        this.heartRateEst_peakCount = 0.0;
      }
      if (initObj.hasOwnProperty('breathingRateEst_FFT')) {
        this.breathingRateEst_FFT = initObj.breathingRateEst_FFT
      }
      else {
        this.breathingRateEst_FFT = 0.0;
      }
      if (initObj.hasOwnProperty('breathingRateEst_xCorr')) {
        this.breathingRateEst_xCorr = initObj.breathingRateEst_xCorr
      }
      else {
        this.breathingRateEst_xCorr = 0.0;
      }
      if (initObj.hasOwnProperty('breathingRateEst_peakCount')) {
        this.breathingRateEst_peakCount = initObj.breathingRateEst_peakCount
      }
      else {
        this.breathingRateEst_peakCount = 0.0;
      }
      if (initObj.hasOwnProperty('confidenceMetricBreathOut')) {
        this.confidenceMetricBreathOut = initObj.confidenceMetricBreathOut
      }
      else {
        this.confidenceMetricBreathOut = 0.0;
      }
      if (initObj.hasOwnProperty('confidenceMetricBreathOut_xCorr')) {
        this.confidenceMetricBreathOut_xCorr = initObj.confidenceMetricBreathOut_xCorr
      }
      else {
        this.confidenceMetricBreathOut_xCorr = 0.0;
      }
      if (initObj.hasOwnProperty('confidenceMetricHeartOut')) {
        this.confidenceMetricHeartOut = initObj.confidenceMetricHeartOut
      }
      else {
        this.confidenceMetricHeartOut = 0.0;
      }
      if (initObj.hasOwnProperty('confidenceMetricHeartOut_4Hz')) {
        this.confidenceMetricHeartOut_4Hz = initObj.confidenceMetricHeartOut_4Hz
      }
      else {
        this.confidenceMetricHeartOut_4Hz = 0.0;
      }
      if (initObj.hasOwnProperty('confidenceMetricHeartOut_xCorr')) {
        this.confidenceMetricHeartOut_xCorr = initObj.confidenceMetricHeartOut_xCorr
      }
      else {
        this.confidenceMetricHeartOut_xCorr = 0.0;
      }
      if (initObj.hasOwnProperty('sumEnergyBreathWfm')) {
        this.sumEnergyBreathWfm = initObj.sumEnergyBreathWfm
      }
      else {
        this.sumEnergyBreathWfm = 0.0;
      }
      if (initObj.hasOwnProperty('sumEnergyHeartWfm')) {
        this.sumEnergyHeartWfm = initObj.sumEnergyHeartWfm
      }
      else {
        this.sumEnergyHeartWfm = 0.0;
      }
      if (initObj.hasOwnProperty('motionDetectedFlag')) {
        this.motionDetectedFlag = initObj.motionDetectedFlag
      }
      else {
        this.motionDetectedFlag = 0.0;
      }
      if (initObj.hasOwnProperty('Reserved0')) {
        this.Reserved0 = initObj.Reserved0
      }
      else {
        this.Reserved0 = 0.0;
      }
      if (initObj.hasOwnProperty('Reserved1')) {
        this.Reserved1 = initObj.Reserved1
      }
      else {
        this.Reserved1 = 0.0;
      }
      if (initObj.hasOwnProperty('Reserved2')) {
        this.Reserved2 = initObj.Reserved2
      }
      else {
        this.Reserved2 = 0.0;
      }
      if (initObj.hasOwnProperty('Reserved3')) {
        this.Reserved3 = initObj.Reserved3
      }
      else {
        this.Reserved3 = 0.0;
      }
      if (initObj.hasOwnProperty('Reserved4')) {
        this.Reserved4 = initObj.Reserved4
      }
      else {
        this.Reserved4 = 0.0;
      }
      if (initObj.hasOwnProperty('Reserved5')) {
        this.Reserved5 = initObj.Reserved5
      }
      else {
        this.Reserved5 = 0.0;
      }
      if (initObj.hasOwnProperty('Reserved6')) {
        this.Reserved6 = initObj.Reserved6
      }
      else {
        this.Reserved6 = 0.0;
      }
      if (initObj.hasOwnProperty('Reserved7')) {
        this.Reserved7 = initObj.Reserved7
      }
      else {
        this.Reserved7 = 0.0;
      }
      if (initObj.hasOwnProperty('Reserved8')) {
        this.Reserved8 = initObj.Reserved8
      }
      else {
        this.Reserved8 = 0.0;
      }
      if (initObj.hasOwnProperty('Reserved9')) {
        this.Reserved9 = initObj.Reserved9
      }
      else {
        this.Reserved9 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TI_vital_data
    // Serialize message field [version]
    bufferOffset = _serializer.uint32(obj.version, buffer, bufferOffset);
    // Serialize message field [totalPacketLen]
    bufferOffset = _serializer.uint32(obj.totalPacketLen, buffer, bufferOffset);
    // Serialize message field [platform]
    bufferOffset = _serializer.uint32(obj.platform, buffer, bufferOffset);
    // Serialize message field [frameNumber]
    bufferOffset = _serializer.uint32(obj.frameNumber, buffer, bufferOffset);
    // Serialize message field [timeCpuCycles]
    bufferOffset = _serializer.uint32(obj.timeCpuCycles, buffer, bufferOffset);
    // Serialize message field [numDetcetedObj]
    bufferOffset = _serializer.uint32(obj.numDetcetedObj, buffer, bufferOffset);
    // Serialize message field [numTLVs]
    bufferOffset = _serializer.uint32(obj.numTLVs, buffer, bufferOffset);
    // Serialize message field [rangeBinIndexMax]
    bufferOffset = _serializer.uint16(obj.rangeBinIndexMax, buffer, bufferOffset);
    // Serialize message field [rangeBinIndexPhase]
    bufferOffset = _serializer.uint16(obj.rangeBinIndexPhase, buffer, bufferOffset);
    // Serialize message field [maxVal]
    bufferOffset = _serializer.float32(obj.maxVal, buffer, bufferOffset);
    // Serialize message field [processingCyclesOut]
    bufferOffset = _serializer.uint32(obj.processingCyclesOut, buffer, bufferOffset);
    // Serialize message field [rangeBinStartIndex]
    bufferOffset = _serializer.uint16(obj.rangeBinStartIndex, buffer, bufferOffset);
    // Serialize message field [rangeBinEndIndex]
    bufferOffset = _serializer.uint16(obj.rangeBinEndIndex, buffer, bufferOffset);
    // Serialize message field [unwrapPhasePeak_mm]
    bufferOffset = _serializer.float32(obj.unwrapPhasePeak_mm, buffer, bufferOffset);
    // Serialize message field [outputFilterBreathOut]
    bufferOffset = _serializer.float32(obj.outputFilterBreathOut, buffer, bufferOffset);
    // Serialize message field [outputFilterHeartOut]
    bufferOffset = _serializer.float32(obj.outputFilterHeartOut, buffer, bufferOffset);
    // Serialize message field [heartRateEst_FFT]
    bufferOffset = _serializer.float32(obj.heartRateEst_FFT, buffer, bufferOffset);
    // Serialize message field [heartRateEst_FFT_4Hz]
    bufferOffset = _serializer.float32(obj.heartRateEst_FFT_4Hz, buffer, bufferOffset);
    // Serialize message field [heartRateEst_xCorr]
    bufferOffset = _serializer.float32(obj.heartRateEst_xCorr, buffer, bufferOffset);
    // Serialize message field [heartRateEst_peakCount]
    bufferOffset = _serializer.float32(obj.heartRateEst_peakCount, buffer, bufferOffset);
    // Serialize message field [breathingRateEst_FFT]
    bufferOffset = _serializer.float32(obj.breathingRateEst_FFT, buffer, bufferOffset);
    // Serialize message field [breathingRateEst_xCorr]
    bufferOffset = _serializer.float32(obj.breathingRateEst_xCorr, buffer, bufferOffset);
    // Serialize message field [breathingRateEst_peakCount]
    bufferOffset = _serializer.float32(obj.breathingRateEst_peakCount, buffer, bufferOffset);
    // Serialize message field [confidenceMetricBreathOut]
    bufferOffset = _serializer.float32(obj.confidenceMetricBreathOut, buffer, bufferOffset);
    // Serialize message field [confidenceMetricBreathOut_xCorr]
    bufferOffset = _serializer.float32(obj.confidenceMetricBreathOut_xCorr, buffer, bufferOffset);
    // Serialize message field [confidenceMetricHeartOut]
    bufferOffset = _serializer.float32(obj.confidenceMetricHeartOut, buffer, bufferOffset);
    // Serialize message field [confidenceMetricHeartOut_4Hz]
    bufferOffset = _serializer.float32(obj.confidenceMetricHeartOut_4Hz, buffer, bufferOffset);
    // Serialize message field [confidenceMetricHeartOut_xCorr]
    bufferOffset = _serializer.float32(obj.confidenceMetricHeartOut_xCorr, buffer, bufferOffset);
    // Serialize message field [sumEnergyBreathWfm]
    bufferOffset = _serializer.float32(obj.sumEnergyBreathWfm, buffer, bufferOffset);
    // Serialize message field [sumEnergyHeartWfm]
    bufferOffset = _serializer.float32(obj.sumEnergyHeartWfm, buffer, bufferOffset);
    // Serialize message field [motionDetectedFlag]
    bufferOffset = _serializer.float32(obj.motionDetectedFlag, buffer, bufferOffset);
    // Serialize message field [Reserved0]
    bufferOffset = _serializer.float32(obj.Reserved0, buffer, bufferOffset);
    // Serialize message field [Reserved1]
    bufferOffset = _serializer.float32(obj.Reserved1, buffer, bufferOffset);
    // Serialize message field [Reserved2]
    bufferOffset = _serializer.float32(obj.Reserved2, buffer, bufferOffset);
    // Serialize message field [Reserved3]
    bufferOffset = _serializer.float32(obj.Reserved3, buffer, bufferOffset);
    // Serialize message field [Reserved4]
    bufferOffset = _serializer.float32(obj.Reserved4, buffer, bufferOffset);
    // Serialize message field [Reserved5]
    bufferOffset = _serializer.float32(obj.Reserved5, buffer, bufferOffset);
    // Serialize message field [Reserved6]
    bufferOffset = _serializer.float32(obj.Reserved6, buffer, bufferOffset);
    // Serialize message field [Reserved7]
    bufferOffset = _serializer.float32(obj.Reserved7, buffer, bufferOffset);
    // Serialize message field [Reserved8]
    bufferOffset = _serializer.float32(obj.Reserved8, buffer, bufferOffset);
    // Serialize message field [Reserved9]
    bufferOffset = _serializer.float32(obj.Reserved9, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TI_vital_data
    let len;
    let data = new TI_vital_data(null);
    // Deserialize message field [version]
    data.version = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [totalPacketLen]
    data.totalPacketLen = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [platform]
    data.platform = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [frameNumber]
    data.frameNumber = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [timeCpuCycles]
    data.timeCpuCycles = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [numDetcetedObj]
    data.numDetcetedObj = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [numTLVs]
    data.numTLVs = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [rangeBinIndexMax]
    data.rangeBinIndexMax = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [rangeBinIndexPhase]
    data.rangeBinIndexPhase = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [maxVal]
    data.maxVal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [processingCyclesOut]
    data.processingCyclesOut = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [rangeBinStartIndex]
    data.rangeBinStartIndex = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [rangeBinEndIndex]
    data.rangeBinEndIndex = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [unwrapPhasePeak_mm]
    data.unwrapPhasePeak_mm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [outputFilterBreathOut]
    data.outputFilterBreathOut = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [outputFilterHeartOut]
    data.outputFilterHeartOut = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heartRateEst_FFT]
    data.heartRateEst_FFT = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heartRateEst_FFT_4Hz]
    data.heartRateEst_FFT_4Hz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heartRateEst_xCorr]
    data.heartRateEst_xCorr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heartRateEst_peakCount]
    data.heartRateEst_peakCount = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [breathingRateEst_FFT]
    data.breathingRateEst_FFT = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [breathingRateEst_xCorr]
    data.breathingRateEst_xCorr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [breathingRateEst_peakCount]
    data.breathingRateEst_peakCount = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidenceMetricBreathOut]
    data.confidenceMetricBreathOut = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidenceMetricBreathOut_xCorr]
    data.confidenceMetricBreathOut_xCorr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidenceMetricHeartOut]
    data.confidenceMetricHeartOut = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidenceMetricHeartOut_4Hz]
    data.confidenceMetricHeartOut_4Hz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidenceMetricHeartOut_xCorr]
    data.confidenceMetricHeartOut_xCorr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sumEnergyBreathWfm]
    data.sumEnergyBreathWfm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sumEnergyHeartWfm]
    data.sumEnergyHeartWfm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motionDetectedFlag]
    data.motionDetectedFlag = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Reserved0]
    data.Reserved0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Reserved1]
    data.Reserved1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Reserved2]
    data.Reserved2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Reserved3]
    data.Reserved3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Reserved4]
    data.Reserved4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Reserved5]
    data.Reserved5 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Reserved6]
    data.Reserved6 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Reserved7]
    data.Reserved7 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Reserved8]
    data.Reserved8 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Reserved9]
    data.Reserved9 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 156;
  }

  static datatype() {
    // Returns string type for a message object
    return 'serial_port/TI_vital_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '527ccc2a7cc0b315e72f8d6f7b744dc8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 version
    uint32 totalPacketLen
    uint32 platform
    uint32 frameNumber
    uint32 timeCpuCycles
    uint32 numDetcetedObj
    uint32 numTLVs
    uint16 rangeBinIndexMax
    uint16 rangeBinIndexPhase
    float32 maxVal
    uint32 processingCyclesOut
    uint16 rangeBinStartIndex
    uint16 rangeBinEndIndex
    float32 unwrapPhasePeak_mm
    float32 outputFilterBreathOut
    float32 outputFilterHeartOut
    float32 heartRateEst_FFT
    float32 heartRateEst_FFT_4Hz
    float32 heartRateEst_xCorr
    float32 heartRateEst_peakCount
    float32 breathingRateEst_FFT
    float32 breathingRateEst_xCorr
    float32 breathingRateEst_peakCount
    float32 confidenceMetricBreathOut
    float32 confidenceMetricBreathOut_xCorr
    float32 confidenceMetricHeartOut
    float32 confidenceMetricHeartOut_4Hz
    float32 confidenceMetricHeartOut_xCorr
    float32 sumEnergyBreathWfm
    float32 sumEnergyHeartWfm
    float32 motionDetectedFlag
    float32 Reserved0
    float32 Reserved1
    float32 Reserved2
    float32 Reserved3
    float32 Reserved4
    float32 Reserved5
    float32 Reserved6
    float32 Reserved7
    float32 Reserved8
    float32 Reserved9
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TI_vital_data(null);
    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = 0
    }

    if (msg.totalPacketLen !== undefined) {
      resolved.totalPacketLen = msg.totalPacketLen;
    }
    else {
      resolved.totalPacketLen = 0
    }

    if (msg.platform !== undefined) {
      resolved.platform = msg.platform;
    }
    else {
      resolved.platform = 0
    }

    if (msg.frameNumber !== undefined) {
      resolved.frameNumber = msg.frameNumber;
    }
    else {
      resolved.frameNumber = 0
    }

    if (msg.timeCpuCycles !== undefined) {
      resolved.timeCpuCycles = msg.timeCpuCycles;
    }
    else {
      resolved.timeCpuCycles = 0
    }

    if (msg.numDetcetedObj !== undefined) {
      resolved.numDetcetedObj = msg.numDetcetedObj;
    }
    else {
      resolved.numDetcetedObj = 0
    }

    if (msg.numTLVs !== undefined) {
      resolved.numTLVs = msg.numTLVs;
    }
    else {
      resolved.numTLVs = 0
    }

    if (msg.rangeBinIndexMax !== undefined) {
      resolved.rangeBinIndexMax = msg.rangeBinIndexMax;
    }
    else {
      resolved.rangeBinIndexMax = 0
    }

    if (msg.rangeBinIndexPhase !== undefined) {
      resolved.rangeBinIndexPhase = msg.rangeBinIndexPhase;
    }
    else {
      resolved.rangeBinIndexPhase = 0
    }

    if (msg.maxVal !== undefined) {
      resolved.maxVal = msg.maxVal;
    }
    else {
      resolved.maxVal = 0.0
    }

    if (msg.processingCyclesOut !== undefined) {
      resolved.processingCyclesOut = msg.processingCyclesOut;
    }
    else {
      resolved.processingCyclesOut = 0
    }

    if (msg.rangeBinStartIndex !== undefined) {
      resolved.rangeBinStartIndex = msg.rangeBinStartIndex;
    }
    else {
      resolved.rangeBinStartIndex = 0
    }

    if (msg.rangeBinEndIndex !== undefined) {
      resolved.rangeBinEndIndex = msg.rangeBinEndIndex;
    }
    else {
      resolved.rangeBinEndIndex = 0
    }

    if (msg.unwrapPhasePeak_mm !== undefined) {
      resolved.unwrapPhasePeak_mm = msg.unwrapPhasePeak_mm;
    }
    else {
      resolved.unwrapPhasePeak_mm = 0.0
    }

    if (msg.outputFilterBreathOut !== undefined) {
      resolved.outputFilterBreathOut = msg.outputFilterBreathOut;
    }
    else {
      resolved.outputFilterBreathOut = 0.0
    }

    if (msg.outputFilterHeartOut !== undefined) {
      resolved.outputFilterHeartOut = msg.outputFilterHeartOut;
    }
    else {
      resolved.outputFilterHeartOut = 0.0
    }

    if (msg.heartRateEst_FFT !== undefined) {
      resolved.heartRateEst_FFT = msg.heartRateEst_FFT;
    }
    else {
      resolved.heartRateEst_FFT = 0.0
    }

    if (msg.heartRateEst_FFT_4Hz !== undefined) {
      resolved.heartRateEst_FFT_4Hz = msg.heartRateEst_FFT_4Hz;
    }
    else {
      resolved.heartRateEst_FFT_4Hz = 0.0
    }

    if (msg.heartRateEst_xCorr !== undefined) {
      resolved.heartRateEst_xCorr = msg.heartRateEst_xCorr;
    }
    else {
      resolved.heartRateEst_xCorr = 0.0
    }

    if (msg.heartRateEst_peakCount !== undefined) {
      resolved.heartRateEst_peakCount = msg.heartRateEst_peakCount;
    }
    else {
      resolved.heartRateEst_peakCount = 0.0
    }

    if (msg.breathingRateEst_FFT !== undefined) {
      resolved.breathingRateEst_FFT = msg.breathingRateEst_FFT;
    }
    else {
      resolved.breathingRateEst_FFT = 0.0
    }

    if (msg.breathingRateEst_xCorr !== undefined) {
      resolved.breathingRateEst_xCorr = msg.breathingRateEst_xCorr;
    }
    else {
      resolved.breathingRateEst_xCorr = 0.0
    }

    if (msg.breathingRateEst_peakCount !== undefined) {
      resolved.breathingRateEst_peakCount = msg.breathingRateEst_peakCount;
    }
    else {
      resolved.breathingRateEst_peakCount = 0.0
    }

    if (msg.confidenceMetricBreathOut !== undefined) {
      resolved.confidenceMetricBreathOut = msg.confidenceMetricBreathOut;
    }
    else {
      resolved.confidenceMetricBreathOut = 0.0
    }

    if (msg.confidenceMetricBreathOut_xCorr !== undefined) {
      resolved.confidenceMetricBreathOut_xCorr = msg.confidenceMetricBreathOut_xCorr;
    }
    else {
      resolved.confidenceMetricBreathOut_xCorr = 0.0
    }

    if (msg.confidenceMetricHeartOut !== undefined) {
      resolved.confidenceMetricHeartOut = msg.confidenceMetricHeartOut;
    }
    else {
      resolved.confidenceMetricHeartOut = 0.0
    }

    if (msg.confidenceMetricHeartOut_4Hz !== undefined) {
      resolved.confidenceMetricHeartOut_4Hz = msg.confidenceMetricHeartOut_4Hz;
    }
    else {
      resolved.confidenceMetricHeartOut_4Hz = 0.0
    }

    if (msg.confidenceMetricHeartOut_xCorr !== undefined) {
      resolved.confidenceMetricHeartOut_xCorr = msg.confidenceMetricHeartOut_xCorr;
    }
    else {
      resolved.confidenceMetricHeartOut_xCorr = 0.0
    }

    if (msg.sumEnergyBreathWfm !== undefined) {
      resolved.sumEnergyBreathWfm = msg.sumEnergyBreathWfm;
    }
    else {
      resolved.sumEnergyBreathWfm = 0.0
    }

    if (msg.sumEnergyHeartWfm !== undefined) {
      resolved.sumEnergyHeartWfm = msg.sumEnergyHeartWfm;
    }
    else {
      resolved.sumEnergyHeartWfm = 0.0
    }

    if (msg.motionDetectedFlag !== undefined) {
      resolved.motionDetectedFlag = msg.motionDetectedFlag;
    }
    else {
      resolved.motionDetectedFlag = 0.0
    }

    if (msg.Reserved0 !== undefined) {
      resolved.Reserved0 = msg.Reserved0;
    }
    else {
      resolved.Reserved0 = 0.0
    }

    if (msg.Reserved1 !== undefined) {
      resolved.Reserved1 = msg.Reserved1;
    }
    else {
      resolved.Reserved1 = 0.0
    }

    if (msg.Reserved2 !== undefined) {
      resolved.Reserved2 = msg.Reserved2;
    }
    else {
      resolved.Reserved2 = 0.0
    }

    if (msg.Reserved3 !== undefined) {
      resolved.Reserved3 = msg.Reserved3;
    }
    else {
      resolved.Reserved3 = 0.0
    }

    if (msg.Reserved4 !== undefined) {
      resolved.Reserved4 = msg.Reserved4;
    }
    else {
      resolved.Reserved4 = 0.0
    }

    if (msg.Reserved5 !== undefined) {
      resolved.Reserved5 = msg.Reserved5;
    }
    else {
      resolved.Reserved5 = 0.0
    }

    if (msg.Reserved6 !== undefined) {
      resolved.Reserved6 = msg.Reserved6;
    }
    else {
      resolved.Reserved6 = 0.0
    }

    if (msg.Reserved7 !== undefined) {
      resolved.Reserved7 = msg.Reserved7;
    }
    else {
      resolved.Reserved7 = 0.0
    }

    if (msg.Reserved8 !== undefined) {
      resolved.Reserved8 = msg.Reserved8;
    }
    else {
      resolved.Reserved8 = 0.0
    }

    if (msg.Reserved9 !== undefined) {
      resolved.Reserved9 = msg.Reserved9;
    }
    else {
      resolved.Reserved9 = 0.0
    }

    return resolved;
    }
};

module.exports = TI_vital_data;
