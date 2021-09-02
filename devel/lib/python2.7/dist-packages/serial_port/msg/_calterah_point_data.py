# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from serial_port/calterah_point_data.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class calterah_point_data(genpy.Message):
  _md5sum = "6f9b38ae16785d52e5632721cd27c921"
  _type = "serial_port/calterah_point_data"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int64 frame_id
int32 frame_size
float32[150] P
float32[150] range
float32[150] vel
float32[150] ang
float32[150] ang_elv"""
  __slots__ = ['frame_id','frame_size','P','range','vel','ang','ang_elv']
  _slot_types = ['int64','int32','float32[150]','float32[150]','float32[150]','float32[150]','float32[150]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       frame_id,frame_size,P,range,vel,ang,ang_elv

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(calterah_point_data, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.frame_id is None:
        self.frame_id = 0
      if self.frame_size is None:
        self.frame_size = 0
      if self.P is None:
        self.P = [0.] * 150
      if self.range is None:
        self.range = [0.] * 150
      if self.vel is None:
        self.vel = [0.] * 150
      if self.ang is None:
        self.ang = [0.] * 150
      if self.ang_elv is None:
        self.ang_elv = [0.] * 150
    else:
      self.frame_id = 0
      self.frame_size = 0
      self.P = [0.] * 150
      self.range = [0.] * 150
      self.vel = [0.] * 150
      self.ang = [0.] * 150
      self.ang_elv = [0.] * 150

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
      buff.write(_get_struct_qi().pack(_x.frame_id, _x.frame_size))
      buff.write(_get_struct_150f().pack(*self.P))
      buff.write(_get_struct_150f().pack(*self.range))
      buff.write(_get_struct_150f().pack(*self.vel))
      buff.write(_get_struct_150f().pack(*self.ang))
      buff.write(_get_struct_150f().pack(*self.ang_elv))
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
      end += 12
      (_x.frame_id, _x.frame_size,) = _get_struct_qi().unpack(str[start:end])
      start = end
      end += 600
      self.P = _get_struct_150f().unpack(str[start:end])
      start = end
      end += 600
      self.range = _get_struct_150f().unpack(str[start:end])
      start = end
      end += 600
      self.vel = _get_struct_150f().unpack(str[start:end])
      start = end
      end += 600
      self.ang = _get_struct_150f().unpack(str[start:end])
      start = end
      end += 600
      self.ang_elv = _get_struct_150f().unpack(str[start:end])
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
      buff.write(_get_struct_qi().pack(_x.frame_id, _x.frame_size))
      buff.write(self.P.tostring())
      buff.write(self.range.tostring())
      buff.write(self.vel.tostring())
      buff.write(self.ang.tostring())
      buff.write(self.ang_elv.tostring())
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
      end += 12
      (_x.frame_id, _x.frame_size,) = _get_struct_qi().unpack(str[start:end])
      start = end
      end += 600
      self.P = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=150)
      start = end
      end += 600
      self.range = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=150)
      start = end
      end += 600
      self.vel = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=150)
      start = end
      end += 600
      self.ang = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=150)
      start = end
      end += 600
      self.ang_elv = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=150)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_150f = None
def _get_struct_150f():
    global _struct_150f
    if _struct_150f is None:
        _struct_150f = struct.Struct("<150f")
    return _struct_150f
_struct_qi = None
def _get_struct_qi():
    global _struct_qi
    if _struct_qi is None:
        _struct_qi = struct.Struct("<qi")
    return _struct_qi
