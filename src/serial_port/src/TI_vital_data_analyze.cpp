#include <ros/ros.h>
#include <serial_port/serial_data.h>
#include <serial_port/TI_vital_data.h>
#include <std_msgs/Float32.h>
#include <string.h>
#include <stdio.h>

#define DATA_SIZE 10000


class GetTISerialDateAndPubPointDate
{
private:
    /* data */
    ros::NodeHandle n;
    ros::Publisher pub;
    ros::Subscriber sub;
    unsigned int find_header_step ;
    unsigned char get_header_flag;

public:
    GetTISerialDateAndPubPointDate(/* args */);
    ~GetTISerialDateAndPubPointDate();

    char recv_data[DATA_SIZE];
    unsigned int write_p = 0,read_p = 0;
    inline float char2float( unsigned int data_p);
    uint32_t char2int32( unsigned int data_p);
    uint16_t char2int16( unsigned int data_p);

    unsigned char write_overwrite=0;
    unsigned char read_overwrite=0;
    serial_port::TI_vital_data vital_msg;

    inline unsigned int get_ready_size(void);
    void TI_vital_data_Callback(const serial_port::serial_data::ConstPtr &msg);
};

GetTISerialDateAndPubPointDate::GetTISerialDateAndPubPointDate(/* args */)
{
    find_header_step  = 0;
    get_header_flag = 0;
    pub = n.advertise<serial_port::TI_vital_data>("TI_vital_data",100);

    sub = n.subscribe("serial_data",1000,&GetTISerialDateAndPubPointDate::TI_vital_data_Callback,this);

}

GetTISerialDateAndPubPointDate::~GetTISerialDateAndPubPointDate()
{

}

float GetTISerialDateAndPubPointDate::char2float( unsigned int data_p)
{
    if(data_p>=DATA_SIZE-4)
    {
    char data[4];
    for(int i=0;i<4;i++)
    {
        if(data_p>=DATA_SIZE)
            data_p = 0;
        data[i] = recv_data[data_p++];
    }
    return *(float*)(data);
    }
    else 
        {return *(float*)(&recv_data[data_p]);}
}

uint32_t GetTISerialDateAndPubPointDate::char2int32( unsigned int data_p)
{
    if(data_p>=DATA_SIZE-4)
    {
    char data[4];
    for(int i=0;i<4;i++)
    {
        if(data_p>=DATA_SIZE)
            data_p = 0;
        data[i] = recv_data[data_p++];
    }
    return *(uint32_t*)(data);
    }
    else 
        {return *(uint32_t*)(&recv_data[data_p]);}
}

uint16_t GetTISerialDateAndPubPointDate::char2int16( unsigned int data_p)
{
    if(data_p>=DATA_SIZE-2)
    {
    char data[2];
    for(int i=0;i<2;i++)
    {
        if(data_p>=DATA_SIZE)
            data_p = 0;
        data[i] = recv_data[data_p++];
    }
    return *(uint16_t*)(data);
    }
    else 
        {return *(uint16_t*)(&recv_data[data_p]);}
}

unsigned int GetTISerialDateAndPubPointDate::get_ready_size(void)
{
    if(write_overwrite>read_overwrite)
    {
        return write_p+DATA_SIZE-read_p;
    }
    else if(write_overwrite == read_overwrite)
    {
        return write_p - read_p;
    }
    else 
    {
        std::cout << "recv_error" << std::endl;
        return 0;
    }
}

void GetTISerialDateAndPubPointDate::TI_vital_data_Callback(const serial_port::serial_data::ConstPtr &msg)
{
    recv_data[write_p++] = msg->data;
   
    if(write_p >= DATA_SIZE)
        {
            write_p = 0;
            write_overwrite ++;
        }
    if(read_p >= DATA_SIZE)
        {
            read_p =0;
            read_overwrite ++ ;
            if(read_overwrite == write_overwrite)
            {
                read_overwrite = 0;
                write_overwrite = 0;
            }
        }
    if((get_ready_size() >=8)&&(get_header_flag==0))
    {
        if((recv_data[read_p]==0x02)&&(recv_data[read_p+1]==0x01)&&(recv_data[read_p+2]==0x04)&&(recv_data[read_p+3]==0x03)\
                &&(recv_data[read_p+4]==0x06)&&(recv_data[read_p+5]==0x05)&&(recv_data[read_p+6]==0x08)&&(recv_data[read_p+7]==0x07))
        { 
            read_p+=8;
            get_header_flag = 1;
            find_header_step = 1;
        }
        else 
        {
            read_p++;
           //  std::cout << "read_p:" <<read_p <<  std::endl;
        }
    }
        if(get_header_flag==1)
        {
            if(get_ready_size()>=4)
            {
                switch (find_header_step)
                {
                case 1:
                     {vital_msg.version = char2int32(read_p);read_p+=4;find_header_step++;
                         std::cout << "version :   " << vital_msg.version<<read_p << std::endl;break;}
                case 2:
                     {vital_msg.totalPacketLen=char2int32(read_p);read_p+=4;find_header_step++;
                      std::cout << "totalPacketLen :   " << vital_msg.totalPacketLen<<read_p <<std::endl;break;}
                case 3:
                     {vital_msg.platform = char2int32(read_p);
                         std::cout << "platform :   " << vital_msg.platform<< read_p <<std::endl;read_p+=4;find_header_step++;break;}
                case 4:
                     {vital_msg.frameNumber = char2int32(read_p);
                         std::cout << "frameNumber : " <<vital_msg.frameNumber  << "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                case 5:
                     {vital_msg.timeCpuCycles = char2int32(read_p);
                         std::cout << "timeCpuCycles : " << vital_msg.timeCpuCycles<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                case 6:
                     {vital_msg.numDetcetedObj = char2int32(read_p);
                         std::cout << "numDetectedObj : " <<vital_msg.numDetcetedObj<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                case 7:
                     {vital_msg.numTLVs = char2int32(read_p);
                         std::cout << "numTLVs : " << vital_msg.numTLVs<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                case 8:
                     {std::cout << "reserveds : " << char2int32(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                case 9:
                     {std::cout << "Type : " << char2int32(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                case 10:
                     {std::cout << "Length : " << char2int32(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                case 11:
                     {vital_msg.rangeBinIndexMax = char2int16(read_p);
                         std::cout << "rangeBinIdexMax : " << char2int16(read_p)<< "   "<<read_p <<std::endl;read_p+=2;find_header_step++;break;}
                case 12:
                     {vital_msg.rangeBinIndexPhase =  char2int16(read_p);
                         std::cout << "rangeBinIndexPhase : " << char2int16(read_p)<< "   "<<read_p <<std::endl;read_p+=2;find_header_step++;break;}
                case 13:
                     {vital_msg.maxVal = char2float(read_p);
                         std::cout << "maxVal : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                case 14:
                     {vital_msg.processingCyclesOut = char2int32(read_p);
                         std::cout << "processingCyclesOut : " << char2int32(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                case 15:
                     {vital_msg.rangeBinStartIndex = char2int16(read_p);
                         std::cout << "rangeBinStartIndex : " << char2int16(read_p)<< "   "<<read_p <<std::endl;read_p+=2;find_header_step++;break;}
                case 16:
                     {vital_msg.rangeBinEndIndex = char2int16(read_p);
                         std::cout << "rangeBinEndIndex : " << char2int16(read_p)<< "   "<<read_p <<std::endl;read_p+=2;find_header_step++;break;}
                     case 17:
                     {vital_msg.unwrapPhasePeak_mm = char2float(read_p);
                         std::cout << "unwrapPhasePeak_mm : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 18:
                     {vital_msg.outputFilterBreathOut = char2float(read_p);
                         std::cout << "outputFilterBreathOut : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 19:
                     {vital_msg.outputFilterHeartOut = char2float(read_p);
                         std::cout << "outputFilterHeartOut : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 20:
                     {vital_msg.heartRateEst_FFT = char2float(read_p);
                         std::cout << "heartRateEst_FFT : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 21:
                     {vital_msg.heartRateEst_FFT_4Hz = char2float(read_p);
                         std::cout << "heartRateEst_FFT_4Hz : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 22:
                     {vital_msg.heartRateEst_xCorr = char2float(read_p);
                         std::cout << "heartRateEst_xCorr : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 23:
                     {vital_msg.heartRateEst_peakCount = char2float(read_p);
                         std::cout << "heartRateEst_peakCount : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 24:
                     {vital_msg.breathingRateEst_FFT = char2float(read_p);
                         std::cout << "breathingRateEst_FFT : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 25:
                     {vital_msg.breathingRateEst_FFT = char2float(read_p);
                         std::cout << "breathingRateEst_xCorr : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 26:
                     {vital_msg.breathingRateEst_peakCount = char2float(read_p);
                         std::cout << "breathingRateEst_peakCount : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 27:
                     {vital_msg.confidenceMetricBreathOut = char2float(read_p);
                         std::cout << "confidenceMetricBreathOut : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 28:
                     {vital_msg.confidenceMetricBreathOut_xCorr = char2float(read_p);
                         std::cout << "confidenceMetricBreathOut_xCorr : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 29:
                     {vital_msg.confidenceMetricHeartOut = char2float(read_p);
                         std::cout << "confidenceMetricHeartOut : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 30:
                     {vital_msg.confidenceMetricHeartOut_4Hz = char2float(read_p);
                         std::cout << "confidenceMetricHeartOut_4Hz : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 31:
                     {vital_msg.confidenceMetricHeartOut_xCorr = char2float(read_p);
                         std::cout << "confidenceMetricHeartOut_xCorr : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 32:
                     {vital_msg.sumEnergyBreathWfm = char2float(read_p);
                         std::cout << "sumEnergyBreathWfm : " << vital_msg.sumEnergyBreathWfm<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 33:
                     {vital_msg.sumEnergyHeartWfm = char2float(read_p);
                         std::cout << "sumEnergyHeartWfm : " << vital_msg.sumEnergyHeartWfm<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 34:
                     {vital_msg.motionDetectedFlag = char2float(read_p);
                         std::cout << "motionDetectedFlag : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 35:
                     {pub.publish(vital_msg);
                         std::cout << "Reserved0 : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 36:
                     {std::cout << "Reserved1 : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 37:
                     {std::cout << "Reserved2 : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 38:
                     {std::cout << "Reserved3 : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 39:
                     {std::cout << "Reserved4 : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 40:
                     {std::cout << "Reserved5 : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 41:
                     {std::cout << "Reserved6 : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 42:
                     {std::cout << "Reserved7 : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 43:
                     {std::cout << "Reserved8 : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 44:
                     {std::cout << "Reserved9 : " << char2float(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 45:
                     {std::cout << "Type2 : " << char2int32(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}
                     case 46:
                     {std::cout << "Length2 : " << char2int32(read_p)<< "   "<<read_p <<std::endl;read_p+=4;find_header_step++;break;}

                default:
                 {find_header_step = 0;
                 get_header_flag = 0;}
                    break;
                }
            }

        }

        
    
    //if(recv_data[read_p++] == 0x01)
}


int main(int argc, char ** argv)
{
    ros::init(argc,argv,"TI_vital_data_analyze");

    GetTISerialDateAndPubPointDate GTSPP_Object;

    ros::spin();//反复调用当前可触发的回调函数，阻塞
    return 0;
}