; Auto-generated. Do not edit!


(cl:in-package serial_port-msg)


;//! \htmlinclude TI_vital_data.msg.html

(cl:defclass <TI_vital_data> (roslisp-msg-protocol:ros-message)
  ((version
    :reader version
    :initarg :version
    :type cl:integer
    :initform 0)
   (totalPacketLen
    :reader totalPacketLen
    :initarg :totalPacketLen
    :type cl:integer
    :initform 0)
   (platform
    :reader platform
    :initarg :platform
    :type cl:integer
    :initform 0)
   (frameNumber
    :reader frameNumber
    :initarg :frameNumber
    :type cl:integer
    :initform 0)
   (timeCpuCycles
    :reader timeCpuCycles
    :initarg :timeCpuCycles
    :type cl:integer
    :initform 0)
   (numDetcetedObj
    :reader numDetcetedObj
    :initarg :numDetcetedObj
    :type cl:integer
    :initform 0)
   (numTLVs
    :reader numTLVs
    :initarg :numTLVs
    :type cl:integer
    :initform 0)
   (rangeBinIndexMax
    :reader rangeBinIndexMax
    :initarg :rangeBinIndexMax
    :type cl:fixnum
    :initform 0)
   (rangeBinIndexPhase
    :reader rangeBinIndexPhase
    :initarg :rangeBinIndexPhase
    :type cl:fixnum
    :initform 0)
   (maxVal
    :reader maxVal
    :initarg :maxVal
    :type cl:float
    :initform 0.0)
   (processingCyclesOut
    :reader processingCyclesOut
    :initarg :processingCyclesOut
    :type cl:integer
    :initform 0)
   (rangeBinStartIndex
    :reader rangeBinStartIndex
    :initarg :rangeBinStartIndex
    :type cl:fixnum
    :initform 0)
   (rangeBinEndIndex
    :reader rangeBinEndIndex
    :initarg :rangeBinEndIndex
    :type cl:fixnum
    :initform 0)
   (unwrapPhasePeak_mm
    :reader unwrapPhasePeak_mm
    :initarg :unwrapPhasePeak_mm
    :type cl:float
    :initform 0.0)
   (outputFilterBreathOut
    :reader outputFilterBreathOut
    :initarg :outputFilterBreathOut
    :type cl:float
    :initform 0.0)
   (outputFilterHeartOut
    :reader outputFilterHeartOut
    :initarg :outputFilterHeartOut
    :type cl:float
    :initform 0.0)
   (heartRateEst_FFT
    :reader heartRateEst_FFT
    :initarg :heartRateEst_FFT
    :type cl:float
    :initform 0.0)
   (heartRateEst_FFT_4Hz
    :reader heartRateEst_FFT_4Hz
    :initarg :heartRateEst_FFT_4Hz
    :type cl:float
    :initform 0.0)
   (heartRateEst_xCorr
    :reader heartRateEst_xCorr
    :initarg :heartRateEst_xCorr
    :type cl:float
    :initform 0.0)
   (heartRateEst_peakCount
    :reader heartRateEst_peakCount
    :initarg :heartRateEst_peakCount
    :type cl:float
    :initform 0.0)
   (breathingRateEst_FFT
    :reader breathingRateEst_FFT
    :initarg :breathingRateEst_FFT
    :type cl:float
    :initform 0.0)
   (breathingRateEst_xCorr
    :reader breathingRateEst_xCorr
    :initarg :breathingRateEst_xCorr
    :type cl:float
    :initform 0.0)
   (breathingRateEst_peakCount
    :reader breathingRateEst_peakCount
    :initarg :breathingRateEst_peakCount
    :type cl:float
    :initform 0.0)
   (confidenceMetricBreathOut
    :reader confidenceMetricBreathOut
    :initarg :confidenceMetricBreathOut
    :type cl:float
    :initform 0.0)
   (confidenceMetricBreathOut_xCorr
    :reader confidenceMetricBreathOut_xCorr
    :initarg :confidenceMetricBreathOut_xCorr
    :type cl:float
    :initform 0.0)
   (confidenceMetricHeartOut
    :reader confidenceMetricHeartOut
    :initarg :confidenceMetricHeartOut
    :type cl:float
    :initform 0.0)
   (confidenceMetricHeartOut_4Hz
    :reader confidenceMetricHeartOut_4Hz
    :initarg :confidenceMetricHeartOut_4Hz
    :type cl:float
    :initform 0.0)
   (confidenceMetricHeartOut_xCorr
    :reader confidenceMetricHeartOut_xCorr
    :initarg :confidenceMetricHeartOut_xCorr
    :type cl:float
    :initform 0.0)
   (sumEnergyBreathWfm
    :reader sumEnergyBreathWfm
    :initarg :sumEnergyBreathWfm
    :type cl:float
    :initform 0.0)
   (sumEnergyHeartWfm
    :reader sumEnergyHeartWfm
    :initarg :sumEnergyHeartWfm
    :type cl:float
    :initform 0.0)
   (motionDetectedFlag
    :reader motionDetectedFlag
    :initarg :motionDetectedFlag
    :type cl:float
    :initform 0.0)
   (Reserved0
    :reader Reserved0
    :initarg :Reserved0
    :type cl:float
    :initform 0.0)
   (Reserved1
    :reader Reserved1
    :initarg :Reserved1
    :type cl:float
    :initform 0.0)
   (Reserved2
    :reader Reserved2
    :initarg :Reserved2
    :type cl:float
    :initform 0.0)
   (Reserved3
    :reader Reserved3
    :initarg :Reserved3
    :type cl:float
    :initform 0.0)
   (Reserved4
    :reader Reserved4
    :initarg :Reserved4
    :type cl:float
    :initform 0.0)
   (Reserved5
    :reader Reserved5
    :initarg :Reserved5
    :type cl:float
    :initform 0.0)
   (Reserved6
    :reader Reserved6
    :initarg :Reserved6
    :type cl:float
    :initform 0.0)
   (Reserved7
    :reader Reserved7
    :initarg :Reserved7
    :type cl:float
    :initform 0.0)
   (Reserved8
    :reader Reserved8
    :initarg :Reserved8
    :type cl:float
    :initform 0.0)
   (Reserved9
    :reader Reserved9
    :initarg :Reserved9
    :type cl:float
    :initform 0.0))
)

(cl:defclass TI_vital_data (<TI_vital_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TI_vital_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TI_vital_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name serial_port-msg:<TI_vital_data> is deprecated: use serial_port-msg:TI_vital_data instead.")))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:version-val is deprecated.  Use serial_port-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'totalPacketLen-val :lambda-list '(m))
(cl:defmethod totalPacketLen-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:totalPacketLen-val is deprecated.  Use serial_port-msg:totalPacketLen instead.")
  (totalPacketLen m))

(cl:ensure-generic-function 'platform-val :lambda-list '(m))
(cl:defmethod platform-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:platform-val is deprecated.  Use serial_port-msg:platform instead.")
  (platform m))

(cl:ensure-generic-function 'frameNumber-val :lambda-list '(m))
(cl:defmethod frameNumber-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:frameNumber-val is deprecated.  Use serial_port-msg:frameNumber instead.")
  (frameNumber m))

(cl:ensure-generic-function 'timeCpuCycles-val :lambda-list '(m))
(cl:defmethod timeCpuCycles-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:timeCpuCycles-val is deprecated.  Use serial_port-msg:timeCpuCycles instead.")
  (timeCpuCycles m))

(cl:ensure-generic-function 'numDetcetedObj-val :lambda-list '(m))
(cl:defmethod numDetcetedObj-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:numDetcetedObj-val is deprecated.  Use serial_port-msg:numDetcetedObj instead.")
  (numDetcetedObj m))

(cl:ensure-generic-function 'numTLVs-val :lambda-list '(m))
(cl:defmethod numTLVs-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:numTLVs-val is deprecated.  Use serial_port-msg:numTLVs instead.")
  (numTLVs m))

(cl:ensure-generic-function 'rangeBinIndexMax-val :lambda-list '(m))
(cl:defmethod rangeBinIndexMax-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:rangeBinIndexMax-val is deprecated.  Use serial_port-msg:rangeBinIndexMax instead.")
  (rangeBinIndexMax m))

(cl:ensure-generic-function 'rangeBinIndexPhase-val :lambda-list '(m))
(cl:defmethod rangeBinIndexPhase-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:rangeBinIndexPhase-val is deprecated.  Use serial_port-msg:rangeBinIndexPhase instead.")
  (rangeBinIndexPhase m))

(cl:ensure-generic-function 'maxVal-val :lambda-list '(m))
(cl:defmethod maxVal-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:maxVal-val is deprecated.  Use serial_port-msg:maxVal instead.")
  (maxVal m))

(cl:ensure-generic-function 'processingCyclesOut-val :lambda-list '(m))
(cl:defmethod processingCyclesOut-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:processingCyclesOut-val is deprecated.  Use serial_port-msg:processingCyclesOut instead.")
  (processingCyclesOut m))

(cl:ensure-generic-function 'rangeBinStartIndex-val :lambda-list '(m))
(cl:defmethod rangeBinStartIndex-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:rangeBinStartIndex-val is deprecated.  Use serial_port-msg:rangeBinStartIndex instead.")
  (rangeBinStartIndex m))

(cl:ensure-generic-function 'rangeBinEndIndex-val :lambda-list '(m))
(cl:defmethod rangeBinEndIndex-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:rangeBinEndIndex-val is deprecated.  Use serial_port-msg:rangeBinEndIndex instead.")
  (rangeBinEndIndex m))

(cl:ensure-generic-function 'unwrapPhasePeak_mm-val :lambda-list '(m))
(cl:defmethod unwrapPhasePeak_mm-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:unwrapPhasePeak_mm-val is deprecated.  Use serial_port-msg:unwrapPhasePeak_mm instead.")
  (unwrapPhasePeak_mm m))

(cl:ensure-generic-function 'outputFilterBreathOut-val :lambda-list '(m))
(cl:defmethod outputFilterBreathOut-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:outputFilterBreathOut-val is deprecated.  Use serial_port-msg:outputFilterBreathOut instead.")
  (outputFilterBreathOut m))

(cl:ensure-generic-function 'outputFilterHeartOut-val :lambda-list '(m))
(cl:defmethod outputFilterHeartOut-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:outputFilterHeartOut-val is deprecated.  Use serial_port-msg:outputFilterHeartOut instead.")
  (outputFilterHeartOut m))

(cl:ensure-generic-function 'heartRateEst_FFT-val :lambda-list '(m))
(cl:defmethod heartRateEst_FFT-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:heartRateEst_FFT-val is deprecated.  Use serial_port-msg:heartRateEst_FFT instead.")
  (heartRateEst_FFT m))

(cl:ensure-generic-function 'heartRateEst_FFT_4Hz-val :lambda-list '(m))
(cl:defmethod heartRateEst_FFT_4Hz-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:heartRateEst_FFT_4Hz-val is deprecated.  Use serial_port-msg:heartRateEst_FFT_4Hz instead.")
  (heartRateEst_FFT_4Hz m))

(cl:ensure-generic-function 'heartRateEst_xCorr-val :lambda-list '(m))
(cl:defmethod heartRateEst_xCorr-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:heartRateEst_xCorr-val is deprecated.  Use serial_port-msg:heartRateEst_xCorr instead.")
  (heartRateEst_xCorr m))

(cl:ensure-generic-function 'heartRateEst_peakCount-val :lambda-list '(m))
(cl:defmethod heartRateEst_peakCount-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:heartRateEst_peakCount-val is deprecated.  Use serial_port-msg:heartRateEst_peakCount instead.")
  (heartRateEst_peakCount m))

(cl:ensure-generic-function 'breathingRateEst_FFT-val :lambda-list '(m))
(cl:defmethod breathingRateEst_FFT-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:breathingRateEst_FFT-val is deprecated.  Use serial_port-msg:breathingRateEst_FFT instead.")
  (breathingRateEst_FFT m))

(cl:ensure-generic-function 'breathingRateEst_xCorr-val :lambda-list '(m))
(cl:defmethod breathingRateEst_xCorr-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:breathingRateEst_xCorr-val is deprecated.  Use serial_port-msg:breathingRateEst_xCorr instead.")
  (breathingRateEst_xCorr m))

(cl:ensure-generic-function 'breathingRateEst_peakCount-val :lambda-list '(m))
(cl:defmethod breathingRateEst_peakCount-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:breathingRateEst_peakCount-val is deprecated.  Use serial_port-msg:breathingRateEst_peakCount instead.")
  (breathingRateEst_peakCount m))

(cl:ensure-generic-function 'confidenceMetricBreathOut-val :lambda-list '(m))
(cl:defmethod confidenceMetricBreathOut-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:confidenceMetricBreathOut-val is deprecated.  Use serial_port-msg:confidenceMetricBreathOut instead.")
  (confidenceMetricBreathOut m))

(cl:ensure-generic-function 'confidenceMetricBreathOut_xCorr-val :lambda-list '(m))
(cl:defmethod confidenceMetricBreathOut_xCorr-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:confidenceMetricBreathOut_xCorr-val is deprecated.  Use serial_port-msg:confidenceMetricBreathOut_xCorr instead.")
  (confidenceMetricBreathOut_xCorr m))

(cl:ensure-generic-function 'confidenceMetricHeartOut-val :lambda-list '(m))
(cl:defmethod confidenceMetricHeartOut-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:confidenceMetricHeartOut-val is deprecated.  Use serial_port-msg:confidenceMetricHeartOut instead.")
  (confidenceMetricHeartOut m))

(cl:ensure-generic-function 'confidenceMetricHeartOut_4Hz-val :lambda-list '(m))
(cl:defmethod confidenceMetricHeartOut_4Hz-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:confidenceMetricHeartOut_4Hz-val is deprecated.  Use serial_port-msg:confidenceMetricHeartOut_4Hz instead.")
  (confidenceMetricHeartOut_4Hz m))

(cl:ensure-generic-function 'confidenceMetricHeartOut_xCorr-val :lambda-list '(m))
(cl:defmethod confidenceMetricHeartOut_xCorr-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:confidenceMetricHeartOut_xCorr-val is deprecated.  Use serial_port-msg:confidenceMetricHeartOut_xCorr instead.")
  (confidenceMetricHeartOut_xCorr m))

(cl:ensure-generic-function 'sumEnergyBreathWfm-val :lambda-list '(m))
(cl:defmethod sumEnergyBreathWfm-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:sumEnergyBreathWfm-val is deprecated.  Use serial_port-msg:sumEnergyBreathWfm instead.")
  (sumEnergyBreathWfm m))

(cl:ensure-generic-function 'sumEnergyHeartWfm-val :lambda-list '(m))
(cl:defmethod sumEnergyHeartWfm-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:sumEnergyHeartWfm-val is deprecated.  Use serial_port-msg:sumEnergyHeartWfm instead.")
  (sumEnergyHeartWfm m))

(cl:ensure-generic-function 'motionDetectedFlag-val :lambda-list '(m))
(cl:defmethod motionDetectedFlag-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:motionDetectedFlag-val is deprecated.  Use serial_port-msg:motionDetectedFlag instead.")
  (motionDetectedFlag m))

(cl:ensure-generic-function 'Reserved0-val :lambda-list '(m))
(cl:defmethod Reserved0-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:Reserved0-val is deprecated.  Use serial_port-msg:Reserved0 instead.")
  (Reserved0 m))

(cl:ensure-generic-function 'Reserved1-val :lambda-list '(m))
(cl:defmethod Reserved1-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:Reserved1-val is deprecated.  Use serial_port-msg:Reserved1 instead.")
  (Reserved1 m))

(cl:ensure-generic-function 'Reserved2-val :lambda-list '(m))
(cl:defmethod Reserved2-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:Reserved2-val is deprecated.  Use serial_port-msg:Reserved2 instead.")
  (Reserved2 m))

(cl:ensure-generic-function 'Reserved3-val :lambda-list '(m))
(cl:defmethod Reserved3-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:Reserved3-val is deprecated.  Use serial_port-msg:Reserved3 instead.")
  (Reserved3 m))

(cl:ensure-generic-function 'Reserved4-val :lambda-list '(m))
(cl:defmethod Reserved4-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:Reserved4-val is deprecated.  Use serial_port-msg:Reserved4 instead.")
  (Reserved4 m))

(cl:ensure-generic-function 'Reserved5-val :lambda-list '(m))
(cl:defmethod Reserved5-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:Reserved5-val is deprecated.  Use serial_port-msg:Reserved5 instead.")
  (Reserved5 m))

(cl:ensure-generic-function 'Reserved6-val :lambda-list '(m))
(cl:defmethod Reserved6-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:Reserved6-val is deprecated.  Use serial_port-msg:Reserved6 instead.")
  (Reserved6 m))

(cl:ensure-generic-function 'Reserved7-val :lambda-list '(m))
(cl:defmethod Reserved7-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:Reserved7-val is deprecated.  Use serial_port-msg:Reserved7 instead.")
  (Reserved7 m))

(cl:ensure-generic-function 'Reserved8-val :lambda-list '(m))
(cl:defmethod Reserved8-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:Reserved8-val is deprecated.  Use serial_port-msg:Reserved8 instead.")
  (Reserved8 m))

(cl:ensure-generic-function 'Reserved9-val :lambda-list '(m))
(cl:defmethod Reserved9-val ((m <TI_vital_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:Reserved9-val is deprecated.  Use serial_port-msg:Reserved9 instead.")
  (Reserved9 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TI_vital_data>) ostream)
  "Serializes a message object of type '<TI_vital_data>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'totalPacketLen)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'totalPacketLen)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'totalPacketLen)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'totalPacketLen)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'platform)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'platform)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'platform)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'platform)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameNumber)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameNumber)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameNumber)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameNumber)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeCpuCycles)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeCpuCycles)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeCpuCycles)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeCpuCycles)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numDetcetedObj)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numDetcetedObj)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numDetcetedObj)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numDetcetedObj)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numTLVs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numTLVs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numTLVs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numTLVs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rangeBinIndexMax)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rangeBinIndexMax)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rangeBinIndexPhase)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rangeBinIndexPhase)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxVal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'processingCyclesOut)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'processingCyclesOut)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'processingCyclesOut)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'processingCyclesOut)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rangeBinStartIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rangeBinStartIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rangeBinEndIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rangeBinEndIndex)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'unwrapPhasePeak_mm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'outputFilterBreathOut))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'outputFilterHeartOut))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heartRateEst_FFT))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heartRateEst_FFT_4Hz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heartRateEst_xCorr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heartRateEst_peakCount))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'breathingRateEst_FFT))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'breathingRateEst_xCorr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'breathingRateEst_peakCount))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidenceMetricBreathOut))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidenceMetricBreathOut_xCorr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidenceMetricHeartOut))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidenceMetricHeartOut_4Hz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidenceMetricHeartOut_xCorr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sumEnergyBreathWfm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sumEnergyHeartWfm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motionDetectedFlag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Reserved0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Reserved1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Reserved2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Reserved3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Reserved4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Reserved5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Reserved6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Reserved7))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Reserved8))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Reserved9))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TI_vital_data>) istream)
  "Deserializes a message object of type '<TI_vital_data>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'totalPacketLen)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'totalPacketLen)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'totalPacketLen)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'totalPacketLen)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'platform)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'platform)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'platform)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'platform)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameNumber)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameNumber)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameNumber)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameNumber)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeCpuCycles)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeCpuCycles)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeCpuCycles)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeCpuCycles)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numDetcetedObj)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numDetcetedObj)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numDetcetedObj)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numDetcetedObj)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numTLVs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numTLVs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numTLVs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numTLVs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rangeBinIndexMax)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rangeBinIndexMax)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rangeBinIndexPhase)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rangeBinIndexPhase)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxVal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'processingCyclesOut)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'processingCyclesOut)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'processingCyclesOut)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'processingCyclesOut)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rangeBinStartIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rangeBinStartIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rangeBinEndIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rangeBinEndIndex)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'unwrapPhasePeak_mm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'outputFilterBreathOut) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'outputFilterHeartOut) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heartRateEst_FFT) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heartRateEst_FFT_4Hz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heartRateEst_xCorr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heartRateEst_peakCount) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'breathingRateEst_FFT) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'breathingRateEst_xCorr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'breathingRateEst_peakCount) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidenceMetricBreathOut) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidenceMetricBreathOut_xCorr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidenceMetricHeartOut) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidenceMetricHeartOut_4Hz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidenceMetricHeartOut_xCorr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sumEnergyBreathWfm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sumEnergyHeartWfm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motionDetectedFlag) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Reserved0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Reserved1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Reserved2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Reserved3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Reserved4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Reserved5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Reserved6) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Reserved7) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Reserved8) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Reserved9) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TI_vital_data>)))
  "Returns string type for a message object of type '<TI_vital_data>"
  "serial_port/TI_vital_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TI_vital_data)))
  "Returns string type for a message object of type 'TI_vital_data"
  "serial_port/TI_vital_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TI_vital_data>)))
  "Returns md5sum for a message object of type '<TI_vital_data>"
  "527ccc2a7cc0b315e72f8d6f7b744dc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TI_vital_data)))
  "Returns md5sum for a message object of type 'TI_vital_data"
  "527ccc2a7cc0b315e72f8d6f7b744dc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TI_vital_data>)))
  "Returns full string definition for message of type '<TI_vital_data>"
  (cl:format cl:nil "uint32 version~%uint32 totalPacketLen~%uint32 platform~%uint32 frameNumber~%uint32 timeCpuCycles~%uint32 numDetcetedObj~%uint32 numTLVs~%uint16 rangeBinIndexMax~%uint16 rangeBinIndexPhase~%float32 maxVal~%uint32 processingCyclesOut~%uint16 rangeBinStartIndex~%uint16 rangeBinEndIndex~%float32 unwrapPhasePeak_mm~%float32 outputFilterBreathOut~%float32 outputFilterHeartOut~%float32 heartRateEst_FFT~%float32 heartRateEst_FFT_4Hz~%float32 heartRateEst_xCorr~%float32 heartRateEst_peakCount~%float32 breathingRateEst_FFT~%float32 breathingRateEst_xCorr~%float32 breathingRateEst_peakCount~%float32 confidenceMetricBreathOut~%float32 confidenceMetricBreathOut_xCorr~%float32 confidenceMetricHeartOut~%float32 confidenceMetricHeartOut_4Hz~%float32 confidenceMetricHeartOut_xCorr~%float32 sumEnergyBreathWfm~%float32 sumEnergyHeartWfm~%float32 motionDetectedFlag~%float32 Reserved0~%float32 Reserved1~%float32 Reserved2~%float32 Reserved3~%float32 Reserved4~%float32 Reserved5~%float32 Reserved6~%float32 Reserved7~%float32 Reserved8~%float32 Reserved9~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TI_vital_data)))
  "Returns full string definition for message of type 'TI_vital_data"
  (cl:format cl:nil "uint32 version~%uint32 totalPacketLen~%uint32 platform~%uint32 frameNumber~%uint32 timeCpuCycles~%uint32 numDetcetedObj~%uint32 numTLVs~%uint16 rangeBinIndexMax~%uint16 rangeBinIndexPhase~%float32 maxVal~%uint32 processingCyclesOut~%uint16 rangeBinStartIndex~%uint16 rangeBinEndIndex~%float32 unwrapPhasePeak_mm~%float32 outputFilterBreathOut~%float32 outputFilterHeartOut~%float32 heartRateEst_FFT~%float32 heartRateEst_FFT_4Hz~%float32 heartRateEst_xCorr~%float32 heartRateEst_peakCount~%float32 breathingRateEst_FFT~%float32 breathingRateEst_xCorr~%float32 breathingRateEst_peakCount~%float32 confidenceMetricBreathOut~%float32 confidenceMetricBreathOut_xCorr~%float32 confidenceMetricHeartOut~%float32 confidenceMetricHeartOut_4Hz~%float32 confidenceMetricHeartOut_xCorr~%float32 sumEnergyBreathWfm~%float32 sumEnergyHeartWfm~%float32 motionDetectedFlag~%float32 Reserved0~%float32 Reserved1~%float32 Reserved2~%float32 Reserved3~%float32 Reserved4~%float32 Reserved5~%float32 Reserved6~%float32 Reserved7~%float32 Reserved8~%float32 Reserved9~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TI_vital_data>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     2
     2
     4
     4
     2
     2
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TI_vital_data>))
  "Converts a ROS message object to a list"
  (cl:list 'TI_vital_data
    (cl:cons ':version (version msg))
    (cl:cons ':totalPacketLen (totalPacketLen msg))
    (cl:cons ':platform (platform msg))
    (cl:cons ':frameNumber (frameNumber msg))
    (cl:cons ':timeCpuCycles (timeCpuCycles msg))
    (cl:cons ':numDetcetedObj (numDetcetedObj msg))
    (cl:cons ':numTLVs (numTLVs msg))
    (cl:cons ':rangeBinIndexMax (rangeBinIndexMax msg))
    (cl:cons ':rangeBinIndexPhase (rangeBinIndexPhase msg))
    (cl:cons ':maxVal (maxVal msg))
    (cl:cons ':processingCyclesOut (processingCyclesOut msg))
    (cl:cons ':rangeBinStartIndex (rangeBinStartIndex msg))
    (cl:cons ':rangeBinEndIndex (rangeBinEndIndex msg))
    (cl:cons ':unwrapPhasePeak_mm (unwrapPhasePeak_mm msg))
    (cl:cons ':outputFilterBreathOut (outputFilterBreathOut msg))
    (cl:cons ':outputFilterHeartOut (outputFilterHeartOut msg))
    (cl:cons ':heartRateEst_FFT (heartRateEst_FFT msg))
    (cl:cons ':heartRateEst_FFT_4Hz (heartRateEst_FFT_4Hz msg))
    (cl:cons ':heartRateEst_xCorr (heartRateEst_xCorr msg))
    (cl:cons ':heartRateEst_peakCount (heartRateEst_peakCount msg))
    (cl:cons ':breathingRateEst_FFT (breathingRateEst_FFT msg))
    (cl:cons ':breathingRateEst_xCorr (breathingRateEst_xCorr msg))
    (cl:cons ':breathingRateEst_peakCount (breathingRateEst_peakCount msg))
    (cl:cons ':confidenceMetricBreathOut (confidenceMetricBreathOut msg))
    (cl:cons ':confidenceMetricBreathOut_xCorr (confidenceMetricBreathOut_xCorr msg))
    (cl:cons ':confidenceMetricHeartOut (confidenceMetricHeartOut msg))
    (cl:cons ':confidenceMetricHeartOut_4Hz (confidenceMetricHeartOut_4Hz msg))
    (cl:cons ':confidenceMetricHeartOut_xCorr (confidenceMetricHeartOut_xCorr msg))
    (cl:cons ':sumEnergyBreathWfm (sumEnergyBreathWfm msg))
    (cl:cons ':sumEnergyHeartWfm (sumEnergyHeartWfm msg))
    (cl:cons ':motionDetectedFlag (motionDetectedFlag msg))
    (cl:cons ':Reserved0 (Reserved0 msg))
    (cl:cons ':Reserved1 (Reserved1 msg))
    (cl:cons ':Reserved2 (Reserved2 msg))
    (cl:cons ':Reserved3 (Reserved3 msg))
    (cl:cons ':Reserved4 (Reserved4 msg))
    (cl:cons ':Reserved5 (Reserved5 msg))
    (cl:cons ':Reserved6 (Reserved6 msg))
    (cl:cons ':Reserved7 (Reserved7 msg))
    (cl:cons ':Reserved8 (Reserved8 msg))
    (cl:cons ':Reserved9 (Reserved9 msg))
))
