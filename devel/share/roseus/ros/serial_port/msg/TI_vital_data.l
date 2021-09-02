;; Auto-generated. Do not edit!


(when (boundp 'serial_port::TI_vital_data)
  (if (not (find-package "SERIAL_PORT"))
    (make-package "SERIAL_PORT"))
  (shadow 'TI_vital_data (find-package "SERIAL_PORT")))
(unless (find-package "SERIAL_PORT::TI_VITAL_DATA")
  (make-package "SERIAL_PORT::TI_VITAL_DATA"))

(in-package "ROS")
;;//! \htmlinclude TI_vital_data.msg.html


(defclass serial_port::TI_vital_data
  :super ros::object
  :slots (_version _totalPacketLen _platform _frameNumber _timeCpuCycles _numDetcetedObj _numTLVs _rangeBinIndexMax _rangeBinIndexPhase _maxVal _processingCyclesOut _rangeBinStartIndex _rangeBinEndIndex _unwrapPhasePeak_mm _outputFilterBreathOut _outputFilterHeartOut _heartRateEst_FFT _heartRateEst_FFT_4Hz _heartRateEst_xCorr _heartRateEst_peakCount _breathingRateEst_FFT _breathingRateEst_xCorr _breathingRateEst_peakCount _confidenceMetricBreathOut _confidenceMetricBreathOut_xCorr _confidenceMetricHeartOut _confidenceMetricHeartOut_4Hz _confidenceMetricHeartOut_xCorr _sumEnergyBreathWfm _sumEnergyHeartWfm _motionDetectedFlag _Reserved0 _Reserved1 _Reserved2 _Reserved3 _Reserved4 _Reserved5 _Reserved6 _Reserved7 _Reserved8 _Reserved9 ))

(defmethod serial_port::TI_vital_data
  (:init
   (&key
    ((:version __version) 0)
    ((:totalPacketLen __totalPacketLen) 0)
    ((:platform __platform) 0)
    ((:frameNumber __frameNumber) 0)
    ((:timeCpuCycles __timeCpuCycles) 0)
    ((:numDetcetedObj __numDetcetedObj) 0)
    ((:numTLVs __numTLVs) 0)
    ((:rangeBinIndexMax __rangeBinIndexMax) 0)
    ((:rangeBinIndexPhase __rangeBinIndexPhase) 0)
    ((:maxVal __maxVal) 0.0)
    ((:processingCyclesOut __processingCyclesOut) 0)
    ((:rangeBinStartIndex __rangeBinStartIndex) 0)
    ((:rangeBinEndIndex __rangeBinEndIndex) 0)
    ((:unwrapPhasePeak_mm __unwrapPhasePeak_mm) 0.0)
    ((:outputFilterBreathOut __outputFilterBreathOut) 0.0)
    ((:outputFilterHeartOut __outputFilterHeartOut) 0.0)
    ((:heartRateEst_FFT __heartRateEst_FFT) 0.0)
    ((:heartRateEst_FFT_4Hz __heartRateEst_FFT_4Hz) 0.0)
    ((:heartRateEst_xCorr __heartRateEst_xCorr) 0.0)
    ((:heartRateEst_peakCount __heartRateEst_peakCount) 0.0)
    ((:breathingRateEst_FFT __breathingRateEst_FFT) 0.0)
    ((:breathingRateEst_xCorr __breathingRateEst_xCorr) 0.0)
    ((:breathingRateEst_peakCount __breathingRateEst_peakCount) 0.0)
    ((:confidenceMetricBreathOut __confidenceMetricBreathOut) 0.0)
    ((:confidenceMetricBreathOut_xCorr __confidenceMetricBreathOut_xCorr) 0.0)
    ((:confidenceMetricHeartOut __confidenceMetricHeartOut) 0.0)
    ((:confidenceMetricHeartOut_4Hz __confidenceMetricHeartOut_4Hz) 0.0)
    ((:confidenceMetricHeartOut_xCorr __confidenceMetricHeartOut_xCorr) 0.0)
    ((:sumEnergyBreathWfm __sumEnergyBreathWfm) 0.0)
    ((:sumEnergyHeartWfm __sumEnergyHeartWfm) 0.0)
    ((:motionDetectedFlag __motionDetectedFlag) 0.0)
    ((:Reserved0 __Reserved0) 0.0)
    ((:Reserved1 __Reserved1) 0.0)
    ((:Reserved2 __Reserved2) 0.0)
    ((:Reserved3 __Reserved3) 0.0)
    ((:Reserved4 __Reserved4) 0.0)
    ((:Reserved5 __Reserved5) 0.0)
    ((:Reserved6 __Reserved6) 0.0)
    ((:Reserved7 __Reserved7) 0.0)
    ((:Reserved8 __Reserved8) 0.0)
    ((:Reserved9 __Reserved9) 0.0)
    )
   (send-super :init)
   (setq _version (round __version))
   (setq _totalPacketLen (round __totalPacketLen))
   (setq _platform (round __platform))
   (setq _frameNumber (round __frameNumber))
   (setq _timeCpuCycles (round __timeCpuCycles))
   (setq _numDetcetedObj (round __numDetcetedObj))
   (setq _numTLVs (round __numTLVs))
   (setq _rangeBinIndexMax (round __rangeBinIndexMax))
   (setq _rangeBinIndexPhase (round __rangeBinIndexPhase))
   (setq _maxVal (float __maxVal))
   (setq _processingCyclesOut (round __processingCyclesOut))
   (setq _rangeBinStartIndex (round __rangeBinStartIndex))
   (setq _rangeBinEndIndex (round __rangeBinEndIndex))
   (setq _unwrapPhasePeak_mm (float __unwrapPhasePeak_mm))
   (setq _outputFilterBreathOut (float __outputFilterBreathOut))
   (setq _outputFilterHeartOut (float __outputFilterHeartOut))
   (setq _heartRateEst_FFT (float __heartRateEst_FFT))
   (setq _heartRateEst_FFT_4Hz (float __heartRateEst_FFT_4Hz))
   (setq _heartRateEst_xCorr (float __heartRateEst_xCorr))
   (setq _heartRateEst_peakCount (float __heartRateEst_peakCount))
   (setq _breathingRateEst_FFT (float __breathingRateEst_FFT))
   (setq _breathingRateEst_xCorr (float __breathingRateEst_xCorr))
   (setq _breathingRateEst_peakCount (float __breathingRateEst_peakCount))
   (setq _confidenceMetricBreathOut (float __confidenceMetricBreathOut))
   (setq _confidenceMetricBreathOut_xCorr (float __confidenceMetricBreathOut_xCorr))
   (setq _confidenceMetricHeartOut (float __confidenceMetricHeartOut))
   (setq _confidenceMetricHeartOut_4Hz (float __confidenceMetricHeartOut_4Hz))
   (setq _confidenceMetricHeartOut_xCorr (float __confidenceMetricHeartOut_xCorr))
   (setq _sumEnergyBreathWfm (float __sumEnergyBreathWfm))
   (setq _sumEnergyHeartWfm (float __sumEnergyHeartWfm))
   (setq _motionDetectedFlag (float __motionDetectedFlag))
   (setq _Reserved0 (float __Reserved0))
   (setq _Reserved1 (float __Reserved1))
   (setq _Reserved2 (float __Reserved2))
   (setq _Reserved3 (float __Reserved3))
   (setq _Reserved4 (float __Reserved4))
   (setq _Reserved5 (float __Reserved5))
   (setq _Reserved6 (float __Reserved6))
   (setq _Reserved7 (float __Reserved7))
   (setq _Reserved8 (float __Reserved8))
   (setq _Reserved9 (float __Reserved9))
   self)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:totalPacketLen
   (&optional __totalPacketLen)
   (if __totalPacketLen (setq _totalPacketLen __totalPacketLen)) _totalPacketLen)
  (:platform
   (&optional __platform)
   (if __platform (setq _platform __platform)) _platform)
  (:frameNumber
   (&optional __frameNumber)
   (if __frameNumber (setq _frameNumber __frameNumber)) _frameNumber)
  (:timeCpuCycles
   (&optional __timeCpuCycles)
   (if __timeCpuCycles (setq _timeCpuCycles __timeCpuCycles)) _timeCpuCycles)
  (:numDetcetedObj
   (&optional __numDetcetedObj)
   (if __numDetcetedObj (setq _numDetcetedObj __numDetcetedObj)) _numDetcetedObj)
  (:numTLVs
   (&optional __numTLVs)
   (if __numTLVs (setq _numTLVs __numTLVs)) _numTLVs)
  (:rangeBinIndexMax
   (&optional __rangeBinIndexMax)
   (if __rangeBinIndexMax (setq _rangeBinIndexMax __rangeBinIndexMax)) _rangeBinIndexMax)
  (:rangeBinIndexPhase
   (&optional __rangeBinIndexPhase)
   (if __rangeBinIndexPhase (setq _rangeBinIndexPhase __rangeBinIndexPhase)) _rangeBinIndexPhase)
  (:maxVal
   (&optional __maxVal)
   (if __maxVal (setq _maxVal __maxVal)) _maxVal)
  (:processingCyclesOut
   (&optional __processingCyclesOut)
   (if __processingCyclesOut (setq _processingCyclesOut __processingCyclesOut)) _processingCyclesOut)
  (:rangeBinStartIndex
   (&optional __rangeBinStartIndex)
   (if __rangeBinStartIndex (setq _rangeBinStartIndex __rangeBinStartIndex)) _rangeBinStartIndex)
  (:rangeBinEndIndex
   (&optional __rangeBinEndIndex)
   (if __rangeBinEndIndex (setq _rangeBinEndIndex __rangeBinEndIndex)) _rangeBinEndIndex)
  (:unwrapPhasePeak_mm
   (&optional __unwrapPhasePeak_mm)
   (if __unwrapPhasePeak_mm (setq _unwrapPhasePeak_mm __unwrapPhasePeak_mm)) _unwrapPhasePeak_mm)
  (:outputFilterBreathOut
   (&optional __outputFilterBreathOut)
   (if __outputFilterBreathOut (setq _outputFilterBreathOut __outputFilterBreathOut)) _outputFilterBreathOut)
  (:outputFilterHeartOut
   (&optional __outputFilterHeartOut)
   (if __outputFilterHeartOut (setq _outputFilterHeartOut __outputFilterHeartOut)) _outputFilterHeartOut)
  (:heartRateEst_FFT
   (&optional __heartRateEst_FFT)
   (if __heartRateEst_FFT (setq _heartRateEst_FFT __heartRateEst_FFT)) _heartRateEst_FFT)
  (:heartRateEst_FFT_4Hz
   (&optional __heartRateEst_FFT_4Hz)
   (if __heartRateEst_FFT_4Hz (setq _heartRateEst_FFT_4Hz __heartRateEst_FFT_4Hz)) _heartRateEst_FFT_4Hz)
  (:heartRateEst_xCorr
   (&optional __heartRateEst_xCorr)
   (if __heartRateEst_xCorr (setq _heartRateEst_xCorr __heartRateEst_xCorr)) _heartRateEst_xCorr)
  (:heartRateEst_peakCount
   (&optional __heartRateEst_peakCount)
   (if __heartRateEst_peakCount (setq _heartRateEst_peakCount __heartRateEst_peakCount)) _heartRateEst_peakCount)
  (:breathingRateEst_FFT
   (&optional __breathingRateEst_FFT)
   (if __breathingRateEst_FFT (setq _breathingRateEst_FFT __breathingRateEst_FFT)) _breathingRateEst_FFT)
  (:breathingRateEst_xCorr
   (&optional __breathingRateEst_xCorr)
   (if __breathingRateEst_xCorr (setq _breathingRateEst_xCorr __breathingRateEst_xCorr)) _breathingRateEst_xCorr)
  (:breathingRateEst_peakCount
   (&optional __breathingRateEst_peakCount)
   (if __breathingRateEst_peakCount (setq _breathingRateEst_peakCount __breathingRateEst_peakCount)) _breathingRateEst_peakCount)
  (:confidenceMetricBreathOut
   (&optional __confidenceMetricBreathOut)
   (if __confidenceMetricBreathOut (setq _confidenceMetricBreathOut __confidenceMetricBreathOut)) _confidenceMetricBreathOut)
  (:confidenceMetricBreathOut_xCorr
   (&optional __confidenceMetricBreathOut_xCorr)
   (if __confidenceMetricBreathOut_xCorr (setq _confidenceMetricBreathOut_xCorr __confidenceMetricBreathOut_xCorr)) _confidenceMetricBreathOut_xCorr)
  (:confidenceMetricHeartOut
   (&optional __confidenceMetricHeartOut)
   (if __confidenceMetricHeartOut (setq _confidenceMetricHeartOut __confidenceMetricHeartOut)) _confidenceMetricHeartOut)
  (:confidenceMetricHeartOut_4Hz
   (&optional __confidenceMetricHeartOut_4Hz)
   (if __confidenceMetricHeartOut_4Hz (setq _confidenceMetricHeartOut_4Hz __confidenceMetricHeartOut_4Hz)) _confidenceMetricHeartOut_4Hz)
  (:confidenceMetricHeartOut_xCorr
   (&optional __confidenceMetricHeartOut_xCorr)
   (if __confidenceMetricHeartOut_xCorr (setq _confidenceMetricHeartOut_xCorr __confidenceMetricHeartOut_xCorr)) _confidenceMetricHeartOut_xCorr)
  (:sumEnergyBreathWfm
   (&optional __sumEnergyBreathWfm)
   (if __sumEnergyBreathWfm (setq _sumEnergyBreathWfm __sumEnergyBreathWfm)) _sumEnergyBreathWfm)
  (:sumEnergyHeartWfm
   (&optional __sumEnergyHeartWfm)
   (if __sumEnergyHeartWfm (setq _sumEnergyHeartWfm __sumEnergyHeartWfm)) _sumEnergyHeartWfm)
  (:motionDetectedFlag
   (&optional __motionDetectedFlag)
   (if __motionDetectedFlag (setq _motionDetectedFlag __motionDetectedFlag)) _motionDetectedFlag)
  (:Reserved0
   (&optional __Reserved0)
   (if __Reserved0 (setq _Reserved0 __Reserved0)) _Reserved0)
  (:Reserved1
   (&optional __Reserved1)
   (if __Reserved1 (setq _Reserved1 __Reserved1)) _Reserved1)
  (:Reserved2
   (&optional __Reserved2)
   (if __Reserved2 (setq _Reserved2 __Reserved2)) _Reserved2)
  (:Reserved3
   (&optional __Reserved3)
   (if __Reserved3 (setq _Reserved3 __Reserved3)) _Reserved3)
  (:Reserved4
   (&optional __Reserved4)
   (if __Reserved4 (setq _Reserved4 __Reserved4)) _Reserved4)
  (:Reserved5
   (&optional __Reserved5)
   (if __Reserved5 (setq _Reserved5 __Reserved5)) _Reserved5)
  (:Reserved6
   (&optional __Reserved6)
   (if __Reserved6 (setq _Reserved6 __Reserved6)) _Reserved6)
  (:Reserved7
   (&optional __Reserved7)
   (if __Reserved7 (setq _Reserved7 __Reserved7)) _Reserved7)
  (:Reserved8
   (&optional __Reserved8)
   (if __Reserved8 (setq _Reserved8 __Reserved8)) _Reserved8)
  (:Reserved9
   (&optional __Reserved9)
   (if __Reserved9 (setq _Reserved9 __Reserved9)) _Reserved9)
  (:serialization-length
   ()
   (+
    ;; uint32 _version
    4
    ;; uint32 _totalPacketLen
    4
    ;; uint32 _platform
    4
    ;; uint32 _frameNumber
    4
    ;; uint32 _timeCpuCycles
    4
    ;; uint32 _numDetcetedObj
    4
    ;; uint32 _numTLVs
    4
    ;; uint16 _rangeBinIndexMax
    2
    ;; uint16 _rangeBinIndexPhase
    2
    ;; float32 _maxVal
    4
    ;; uint32 _processingCyclesOut
    4
    ;; uint16 _rangeBinStartIndex
    2
    ;; uint16 _rangeBinEndIndex
    2
    ;; float32 _unwrapPhasePeak_mm
    4
    ;; float32 _outputFilterBreathOut
    4
    ;; float32 _outputFilterHeartOut
    4
    ;; float32 _heartRateEst_FFT
    4
    ;; float32 _heartRateEst_FFT_4Hz
    4
    ;; float32 _heartRateEst_xCorr
    4
    ;; float32 _heartRateEst_peakCount
    4
    ;; float32 _breathingRateEst_FFT
    4
    ;; float32 _breathingRateEst_xCorr
    4
    ;; float32 _breathingRateEst_peakCount
    4
    ;; float32 _confidenceMetricBreathOut
    4
    ;; float32 _confidenceMetricBreathOut_xCorr
    4
    ;; float32 _confidenceMetricHeartOut
    4
    ;; float32 _confidenceMetricHeartOut_4Hz
    4
    ;; float32 _confidenceMetricHeartOut_xCorr
    4
    ;; float32 _sumEnergyBreathWfm
    4
    ;; float32 _sumEnergyHeartWfm
    4
    ;; float32 _motionDetectedFlag
    4
    ;; float32 _Reserved0
    4
    ;; float32 _Reserved1
    4
    ;; float32 _Reserved2
    4
    ;; float32 _Reserved3
    4
    ;; float32 _Reserved4
    4
    ;; float32 _Reserved5
    4
    ;; float32 _Reserved6
    4
    ;; float32 _Reserved7
    4
    ;; float32 _Reserved8
    4
    ;; float32 _Reserved9
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _version
       (write-long _version s)
     ;; uint32 _totalPacketLen
       (write-long _totalPacketLen s)
     ;; uint32 _platform
       (write-long _platform s)
     ;; uint32 _frameNumber
       (write-long _frameNumber s)
     ;; uint32 _timeCpuCycles
       (write-long _timeCpuCycles s)
     ;; uint32 _numDetcetedObj
       (write-long _numDetcetedObj s)
     ;; uint32 _numTLVs
       (write-long _numTLVs s)
     ;; uint16 _rangeBinIndexMax
       (write-word _rangeBinIndexMax s)
     ;; uint16 _rangeBinIndexPhase
       (write-word _rangeBinIndexPhase s)
     ;; float32 _maxVal
       (sys::poke _maxVal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _processingCyclesOut
       (write-long _processingCyclesOut s)
     ;; uint16 _rangeBinStartIndex
       (write-word _rangeBinStartIndex s)
     ;; uint16 _rangeBinEndIndex
       (write-word _rangeBinEndIndex s)
     ;; float32 _unwrapPhasePeak_mm
       (sys::poke _unwrapPhasePeak_mm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _outputFilterBreathOut
       (sys::poke _outputFilterBreathOut (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _outputFilterHeartOut
       (sys::poke _outputFilterHeartOut (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heartRateEst_FFT
       (sys::poke _heartRateEst_FFT (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heartRateEst_FFT_4Hz
       (sys::poke _heartRateEst_FFT_4Hz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heartRateEst_xCorr
       (sys::poke _heartRateEst_xCorr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heartRateEst_peakCount
       (sys::poke _heartRateEst_peakCount (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _breathingRateEst_FFT
       (sys::poke _breathingRateEst_FFT (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _breathingRateEst_xCorr
       (sys::poke _breathingRateEst_xCorr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _breathingRateEst_peakCount
       (sys::poke _breathingRateEst_peakCount (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidenceMetricBreathOut
       (sys::poke _confidenceMetricBreathOut (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidenceMetricBreathOut_xCorr
       (sys::poke _confidenceMetricBreathOut_xCorr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidenceMetricHeartOut
       (sys::poke _confidenceMetricHeartOut (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidenceMetricHeartOut_4Hz
       (sys::poke _confidenceMetricHeartOut_4Hz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidenceMetricHeartOut_xCorr
       (sys::poke _confidenceMetricHeartOut_xCorr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sumEnergyBreathWfm
       (sys::poke _sumEnergyBreathWfm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sumEnergyHeartWfm
       (sys::poke _sumEnergyHeartWfm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _motionDetectedFlag
       (sys::poke _motionDetectedFlag (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Reserved0
       (sys::poke _Reserved0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Reserved1
       (sys::poke _Reserved1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Reserved2
       (sys::poke _Reserved2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Reserved3
       (sys::poke _Reserved3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Reserved4
       (sys::poke _Reserved4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Reserved5
       (sys::poke _Reserved5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Reserved6
       (sys::poke _Reserved6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Reserved7
       (sys::poke _Reserved7 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Reserved8
       (sys::poke _Reserved8 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Reserved9
       (sys::poke _Reserved9 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _version
     (setq _version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _totalPacketLen
     (setq _totalPacketLen (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _platform
     (setq _platform (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _frameNumber
     (setq _frameNumber (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _timeCpuCycles
     (setq _timeCpuCycles (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _numDetcetedObj
     (setq _numDetcetedObj (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _numTLVs
     (setq _numTLVs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _rangeBinIndexMax
     (setq _rangeBinIndexMax (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _rangeBinIndexPhase
     (setq _rangeBinIndexPhase (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _maxVal
     (setq _maxVal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _processingCyclesOut
     (setq _processingCyclesOut (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _rangeBinStartIndex
     (setq _rangeBinStartIndex (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _rangeBinEndIndex
     (setq _rangeBinEndIndex (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _unwrapPhasePeak_mm
     (setq _unwrapPhasePeak_mm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _outputFilterBreathOut
     (setq _outputFilterBreathOut (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _outputFilterHeartOut
     (setq _outputFilterHeartOut (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heartRateEst_FFT
     (setq _heartRateEst_FFT (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heartRateEst_FFT_4Hz
     (setq _heartRateEst_FFT_4Hz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heartRateEst_xCorr
     (setq _heartRateEst_xCorr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heartRateEst_peakCount
     (setq _heartRateEst_peakCount (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _breathingRateEst_FFT
     (setq _breathingRateEst_FFT (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _breathingRateEst_xCorr
     (setq _breathingRateEst_xCorr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _breathingRateEst_peakCount
     (setq _breathingRateEst_peakCount (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidenceMetricBreathOut
     (setq _confidenceMetricBreathOut (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidenceMetricBreathOut_xCorr
     (setq _confidenceMetricBreathOut_xCorr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidenceMetricHeartOut
     (setq _confidenceMetricHeartOut (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidenceMetricHeartOut_4Hz
     (setq _confidenceMetricHeartOut_4Hz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidenceMetricHeartOut_xCorr
     (setq _confidenceMetricHeartOut_xCorr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sumEnergyBreathWfm
     (setq _sumEnergyBreathWfm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sumEnergyHeartWfm
     (setq _sumEnergyHeartWfm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _motionDetectedFlag
     (setq _motionDetectedFlag (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Reserved0
     (setq _Reserved0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Reserved1
     (setq _Reserved1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Reserved2
     (setq _Reserved2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Reserved3
     (setq _Reserved3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Reserved4
     (setq _Reserved4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Reserved5
     (setq _Reserved5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Reserved6
     (setq _Reserved6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Reserved7
     (setq _Reserved7 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Reserved8
     (setq _Reserved8 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Reserved9
     (setq _Reserved9 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get serial_port::TI_vital_data :md5sum-) "527ccc2a7cc0b315e72f8d6f7b744dc8")
(setf (get serial_port::TI_vital_data :datatype-) "serial_port/TI_vital_data")
(setf (get serial_port::TI_vital_data :definition-)
      "uint32 version
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

")



(provide :serial_port/TI_vital_data "527ccc2a7cc0b315e72f8d6f7b744dc8")


