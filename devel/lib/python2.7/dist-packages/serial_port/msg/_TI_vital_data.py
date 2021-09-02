# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from serial_port/TI_vital_data.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class TI_vital_data(genpy.Message):
  _md5sum = "527ccc2a7cc0b315e72f8d6f7b744dc8"
  _type = "serial_port/TI_vital_data"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint32 version
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
"""
  __slots__ = ['version','totalPacketLen','platform','frameNumber','timeCpuCycles','numDetcetedObj','numTLVs','rangeBinIndexMax','rangeBinIndexPhase','maxVal','processingCyclesOut','rangeBinStartIndex','rangeBinEndIndex','unwrapPhasePeak_mm','outputFilterBreathOut','outputFilterHeartOut','heartRateEst_FFT','heartRateEst_FFT_4Hz','heartRateEst_xCorr','heartRateEst_peakCount','breathingRateEst_FFT','breathingRateEst_xCorr','breathingRateEst_peakCount','confidenceMetricBreathOut','confidenceMetricBreathOut_xCorr','confidenceMetricHeartOut','confidenceMetricHeartOut_4Hz','confidenceMetricHeartOut_xCorr','sumEnergyBreathWfm','sumEnergyHeartWfm','motionDetectedFlag','Reserved0','Reserved1','Reserved2','Reserved3','Reserved4','Reserved5','Reserved6','Reserved7','Reserved8','Reserved9']
  _slot_types = ['uint32','uint32','uint32','uint32','uint32','uint32','uint32','uint16','uint16','float32','uint32','uint16','uint16','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       version,totalPacketLen,platform,frameNumber,timeCpuCycles,numDetcetedObj,numTLVs,rangeBinIndexMax,rangeBinIndexPhase,maxVal,processingCyclesOut,rangeBinStartIndex,rangeBinEndIndex,unwrapPhasePeak_mm,outputFilterBreathOut,outputFilterHeartOut,heartRateEst_FFT,heartRateEst_FFT_4Hz,heartRateEst_xCorr,heartRateEst_peakCount,breathingRateEst_FFT,breathingRateEst_xCorr,breathingRateEst_peakCount,confidenceMetricBreathOut,confidenceMetricBreathOut_xCorr,confidenceMetricHeartOut,confidenceMetricHeartOut_4Hz,confidenceMetricHeartOut_xCorr,sumEnergyBreathWfm,sumEnergyHeartWfm,motionDetectedFlag,Reserved0,Reserved1,Reserved2,Reserved3,Reserved4,Reserved5,Reserved6,Reserved7,Reserved8,Reserved9

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TI_vital_data, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.version is None:
        self.version = 0
      if self.totalPacketLen is None:
        self.totalPacketLen = 0
      if self.platform is None:
        self.platform = 0
      if self.frameNumber is None:
        self.frameNumber = 0
      if self.timeCpuCycles is None:
        self.timeCpuCycles = 0
      if self.numDetcetedObj is None:
        self.numDetcetedObj = 0
      if self.numTLVs is None:
        self.numTLVs = 0
      if self.rangeBinIndexMax is None:
        self.rangeBinIndexMax = 0
      if self.rangeBinIndexPhase is None:
        self.rangeBinIndexPhase = 0
      if self.maxVal is None:
        self.maxVal = 0.
      if self.processingCyclesOut is None:
        self.processingCyclesOut = 0
      if self.rangeBinStartIndex is None:
        self.rangeBinStartIndex = 0
      if self.rangeBinEndIndex is None:
        self.rangeBinEndIndex = 0
      if self.unwrapPhasePeak_mm is None:
        self.unwrapPhasePeak_mm = 0.
      if self.outputFilterBreathOut is None:
        self.outputFilterBreathOut = 0.
      if self.outputFilterHeartOut is None:
        self.outputFilterHeartOut = 0.
      if self.heartRateEst_FFT is None:
        self.heartRateEst_FFT = 0.
      if self.heartRateEst_FFT_4Hz is None:
        self.heartRateEst_FFT_4Hz = 0.
      if self.heartRateEst_xCorr is None:
        self.heartRateEst_xCorr = 0.
      if self.heartRateEst_peakCount is None:
        self.heartRateEst_peakCount = 0.
      if self.breathingRateEst_FFT is None:
        self.breathingRateEst_FFT = 0.
      if self.breathingRateEst_xCorr is None:
        self.breathingRateEst_xCorr = 0.
      if self.breathingRateEst_peakCount is None:
        self.breathingRateEst_peakCount = 0.
      if self.confidenceMetricBreathOut is None:
        self.confidenceMetricBreathOut = 0.
      if self.confidenceMetricBreathOut_xCorr is None:
        self.confidenceMetricBreathOut_xCorr = 0.
      if self.confidenceMetricHeartOut is None:
        self.confidenceMetricHeartOut = 0.
      if self.confidenceMetricHeartOut_4Hz is None:
        self.confidenceMetricHeartOut_4Hz = 0.
      if self.confidenceMetricHeartOut_xCorr is None:
        self.confidenceMetricHeartOut_xCorr = 0.
      if self.sumEnergyBreathWfm is None:
        self.sumEnergyBreathWfm = 0.
      if self.sumEnergyHeartWfm is None:
        self.sumEnergyHeartWfm = 0.
      if self.motionDetectedFlag is None:
        self.motionDetectedFlag = 0.
      if self.Reserved0 is None:
        self.Reserved0 = 0.
      if self.Reserved1 is None:
        self.Reserved1 = 0.
      if self.Reserved2 is None:
        self.Reserved2 = 0.
      if self.Reserved3 is None:
        self.Reserved3 = 0.
      if self.Reserved4 is None:
        self.Reserved4 = 0.
      if self.Reserved5 is None:
        self.Reserved5 = 0.
      if self.Reserved6 is None:
        self.Reserved6 = 0.
      if self.Reserved7 is None:
        self.Reserved7 = 0.
      if self.Reserved8 is None:
        self.Reserved8 = 0.
      if self.Reserved9 is None:
        self.Reserved9 = 0.
    else:
      self.version = 0
      self.totalPacketLen = 0
      self.platform = 0
      self.frameNumber = 0
      self.timeCpuCycles = 0
      self.numDetcetedObj = 0
      self.numTLVs = 0
      self.rangeBinIndexMax = 0
      self.rangeBinIndexPhase = 0
      self.maxVal = 0.
      self.processingCyclesOut = 0
      self.rangeBinStartIndex = 0
      self.rangeBinEndIndex = 0
      self.unwrapPhasePeak_mm = 0.
      self.outputFilterBreathOut = 0.
      self.outputFilterHeartOut = 0.
      self.heartRateEst_FFT = 0.
      self.heartRateEst_FFT_4Hz = 0.
      self.heartRateEst_xCorr = 0.
      self.heartRateEst_peakCount = 0.
      self.breathingRateEst_FFT = 0.
      self.breathingRateEst_xCorr = 0.
      self.breathingRateEst_peakCount = 0.
      self.confidenceMetricBreathOut = 0.
      self.confidenceMetricBreathOut_xCorr = 0.
      self.confidenceMetricHeartOut = 0.
      self.confidenceMetricHeartOut_4Hz = 0.
      self.confidenceMetricHeartOut_xCorr = 0.
      self.sumEnergyBreathWfm = 0.
      self.sumEnergyHeartWfm = 0.
      self.motionDetectedFlag = 0.
      self.Reserved0 = 0.
      self.Reserved1 = 0.
      self.Reserved2 = 0.
      self.Reserved3 = 0.
      self.Reserved4 = 0.
      self.Reserved5 = 0.
      self.Reserved6 = 0.
      self.Reserved7 = 0.
      self.Reserved8 = 0.
      self.Reserved9 = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_7I2HfI2H28f().pack(_x.version, _x.totalPacketLen, _x.platform, _x.frameNumber, _x.timeCpuCycles, _x.numDetcetedObj, _x.numTLVs, _x.rangeBinIndexMax, _x.rangeBinIndexPhase, _x.maxVal, _x.processingCyclesOut, _x.rangeBinStartIndex, _x.rangeBinEndIndex, _x.unwrapPhasePeak_mm, _x.outputFilterBreathOut, _x.outputFilterHeartOut, _x.heartRateEst_FFT, _x.heartRateEst_FFT_4Hz, _x.heartRateEst_xCorr, _x.heartRateEst_peakCount, _x.breathingRateEst_FFT, _x.breathingRateEst_xCorr, _x.breathingRateEst_peakCount, _x.confidenceMetricBreathOut, _x.confidenceMetricBreathOut_xCorr, _x.confidenceMetricHeartOut, _x.confidenceMetricHeartOut_4Hz, _x.confidenceMetricHeartOut_xCorr, _x.sumEnergyBreathWfm, _x.sumEnergyHeartWfm, _x.motionDetectedFlag, _x.Reserved0, _x.Reserved1, _x.Reserved2, _x.Reserved3, _x.Reserved4, _x.Reserved5, _x.Reserved6, _x.Reserved7, _x.Reserved8, _x.Reserved9))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 156
      (_x.version, _x.totalPacketLen, _x.platform, _x.frameNumber, _x.timeCpuCycles, _x.numDetcetedObj, _x.numTLVs, _x.rangeBinIndexMax, _x.rangeBinIndexPhase, _x.maxVal, _x.processingCyclesOut, _x.rangeBinStartIndex, _x.rangeBinEndIndex, _x.unwrapPhasePeak_mm, _x.outputFilterBreathOut, _x.outputFilterHeartOut, _x.heartRateEst_FFT, _x.heartRateEst_FFT_4Hz, _x.heartRateEst_xCorr, _x.heartRateEst_peakCount, _x.breathingRateEst_FFT, _x.breathingRateEst_xCorr, _x.breathingRateEst_peakCount, _x.confidenceMetricBreathOut, _x.confidenceMetricBreathOut_xCorr, _x.confidenceMetricHeartOut, _x.confidenceMetricHeartOut_4Hz, _x.confidenceMetricHeartOut_xCorr, _x.sumEnergyBreathWfm, _x.sumEnergyHeartWfm, _x.motionDetectedFlag, _x.Reserved0, _x.Reserved1, _x.Reserved2, _x.Reserved3, _x.Reserved4, _x.Reserved5, _x.Reserved6, _x.Reserved7, _x.Reserved8, _x.Reserved9,) = _get_struct_7I2HfI2H28f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_7I2HfI2H28f().pack(_x.version, _x.totalPacketLen, _x.platform, _x.frameNumber, _x.timeCpuCycles, _x.numDetcetedObj, _x.numTLVs, _x.rangeBinIndexMax, _x.rangeBinIndexPhase, _x.maxVal, _x.processingCyclesOut, _x.rangeBinStartIndex, _x.rangeBinEndIndex, _x.unwrapPhasePeak_mm, _x.outputFilterBreathOut, _x.outputFilterHeartOut, _x.heartRateEst_FFT, _x.heartRateEst_FFT_4Hz, _x.heartRateEst_xCorr, _x.heartRateEst_peakCount, _x.breathingRateEst_FFT, _x.breathingRateEst_xCorr, _x.breathingRateEst_peakCount, _x.confidenceMetricBreathOut, _x.confidenceMetricBreathOut_xCorr, _x.confidenceMetricHeartOut, _x.confidenceMetricHeartOut_4Hz, _x.confidenceMetricHeartOut_xCorr, _x.sumEnergyBreathWfm, _x.sumEnergyHeartWfm, _x.motionDetectedFlag, _x.Reserved0, _x.Reserved1, _x.Reserved2, _x.Reserved3, _x.Reserved4, _x.Reserved5, _x.Reserved6, _x.Reserved7, _x.Reserved8, _x.Reserved9))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 156
      (_x.version, _x.totalPacketLen, _x.platform, _x.frameNumber, _x.timeCpuCycles, _x.numDetcetedObj, _x.numTLVs, _x.rangeBinIndexMax, _x.rangeBinIndexPhase, _x.maxVal, _x.processingCyclesOut, _x.rangeBinStartIndex, _x.rangeBinEndIndex, _x.unwrapPhasePeak_mm, _x.outputFilterBreathOut, _x.outputFilterHeartOut, _x.heartRateEst_FFT, _x.heartRateEst_FFT_4Hz, _x.heartRateEst_xCorr, _x.heartRateEst_peakCount, _x.breathingRateEst_FFT, _x.breathingRateEst_xCorr, _x.breathingRateEst_peakCount, _x.confidenceMetricBreathOut, _x.confidenceMetricBreathOut_xCorr, _x.confidenceMetricHeartOut, _x.confidenceMetricHeartOut_4Hz, _x.confidenceMetricHeartOut_xCorr, _x.sumEnergyBreathWfm, _x.sumEnergyHeartWfm, _x.motionDetectedFlag, _x.Reserved0, _x.Reserved1, _x.Reserved2, _x.Reserved3, _x.Reserved4, _x.Reserved5, _x.Reserved6, _x.Reserved7, _x.Reserved8, _x.Reserved9,) = _get_struct_7I2HfI2H28f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7I2HfI2H28f = None
def _get_struct_7I2HfI2H28f():
    global _struct_7I2HfI2H28f
    if _struct_7I2HfI2H28f is None:
        _struct_7I2HfI2H28f = struct.Struct("<7I2HfI2H28f")
    return _struct_7I2HfI2H28f
