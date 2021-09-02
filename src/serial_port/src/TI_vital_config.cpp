#include <ros/ros.h>
#include <serial/serial.h>
#include <iostream>


int main(int argc, char** argv)
{
    ros::init(argc,argv,"TI_vital_config");//解析参数，命名节点

    ros::NodeHandle nh;                          //创建句柄，实例化node
   
    serial::Serial sp;

    serial::Timeout to = serial::Timeout::simpleTimeout(1000);

    sp.setPort("/dev/ttyACM0");
    sp.setBaudrate(115200);
    sp.setTimeout(to);

    try
    {
        sp.open();
    }
    catch(serial::IOException& e)
    {
        ROS_ERROR_STREAM("unable to open port");
        return -1;
    }
size_t xx;
    if(sp.isOpen())
    {
        ROS_INFO_STREAM("/dev/ttyACM0 is opened");
    }
    else
    {
        return -1;
    }

   // ros::Rate loop_rate(2000); //循环控制  频率   500HZ
unsigned char config_success = 0;
unsigned int config_process = 0;

    while(ros::ok())
    {
        

        if(config_success == 0)
        {
            switch (config_process)
            {
            case 0:
            {
                 sp.write("sensorStop\r\n");
                 ros::Duration(1).sleep();
                 size_t n = sp.available();
                 if(n!=0){
                    uint8_t buffer[20];
                    n = sp.read(buffer,n);
                     for(int i=0;i<n;i++){
                       std::cout << buffer[i] ;
                   }
                   config_process = 1;
                   }
                break;
            }
            case 1:
            {
                 sp.write("flushCfg\r\n");
                 ros::Duration(1).sleep();
                 size_t n = sp.available();
                 if(n!=0){
                    uint8_t buffer[20];
                    n = sp.read(buffer,n);
                     for(int i=0;i<n;i++){
                       std::cout << buffer[i] ;
                   }
                   config_process = 2;
                   }
                break;
            }
            case 2:
            {
                 sp.write("dfeDataOutputMode 1\r\n");
                 ros::Duration(1).sleep();
                 size_t n = sp.available();
                 if(n!=0){
                    uint8_t buffer[20];
                    n = sp.read(buffer,n);
                     for(int i=0;i<n;i++){
                       std::cout << buffer[i] ;
                   }
                   config_process = 3;
                   }
                break;
            }
            case 3:
            {
                 sp.write("channelCfg 15 3 0\r\n");
                 ros::Duration(1).sleep();
                 size_t n = sp.available();
                 if(n!=0){
                    uint8_t buffer[20];
                    n = sp.read(buffer,n);
                     for(int i=0;i<n;i++){
                       std::cout << buffer[i] ;
                   }
                   config_process = 4;
                   }
                break;
            }
            case 4:
            {
                 sp.write("adcCfg 2 1\r\n");
                 ros::Duration(1).sleep();
                 size_t n = sp.available();
                 if(n!=0){
                    uint8_t buffer[20];
                    n = sp.read(buffer,n);
                     for(int i=0;i<n;i++){
                       std::cout << buffer[i] ;
                   }
                   config_process = 5;
                   }
                break;
            }
            case 5:
            {
                 sp.write("adcbufCfg -1 0 0 1 0\r\n");
                 ros::Duration(1).sleep();
                 size_t n = sp.available();
                 if(n!=0){
                    uint8_t buffer[20];
                    n = sp.read(buffer,n);
                     for(int i=0;i<n;i++){
                       std::cout << buffer[i] ;
                   }
                   config_process = 6;
                   }
                break;
            }
            case 6:
            {
                 sp.write("profileCfg 0 60.25 7 6 57 0 0 65 1 200 4000 0 0 40\r\n");
                 ros::Duration(1).sleep();
                 size_t n = sp.available();
                 if(n!=0){
                    uint8_t buffer[20];
                    n = sp.read(buffer,n);
                     for(int i=0;i<n;i++){
                       std::cout << buffer[i] ;
                   }
                   config_process = 7;
                   }
                break;
            }
            case 7:
            {
                 sp.write("chirpCfg 0 0 0 0 0 0 0 1\r\n");
                 ros::Duration(1).sleep();
                 size_t n = sp.available();
                 if(n!=0){
                    uint8_t buffer[20];
                    n = sp.read(buffer,n);
                     for(int i=0;i<n;i++){
                       std::cout << buffer[i] ;
                   }
                   config_process = 8;
                   }
                break;
            }
            case 8:
            {
                 sp.write("frameCfg 0 0 2 0 50 1 0\r\n");
                 ros::Duration(1).sleep();
                 size_t n = sp.available();
                 if(n!=0){
                    uint8_t buffer[20];
                    n = sp.read(buffer,n);
                     for(int i=0;i<n;i++){
                       std::cout << buffer[i] ;
                   }
                   config_process = 9;
                   }
                break;
            }
            case 9:
            {
                 sp.write("lowPower 0 1\r\n");
                 ros::Duration(1).sleep();
                 size_t n = sp.available();
                 if(n!=0){
                    uint8_t buffer[20];
                    n = sp.read(buffer,n);
                     for(int i=0;i<n;i++){
                       std::cout << buffer[i] ;
                   }
                   config_process = 10;
                   }
                break;
            }
            case 10:
            {
                 sp.write("guiMonitor 0 0 0 0 1\r\n");
                 ros::Duration(1).sleep();
                 size_t n = sp.available();
                 if(n!=0){
                    uint8_t buffer[20];
                    n = sp.read(buffer,n);
                     for(int i=0;i<n;i++){
                       std::cout << buffer[i] ;
                   }
                   config_process = 11;
                   }
                break;
            }
            case 11:
            {
                 sp.write("calibDcRangeSig -1 0 0 0 0\r\n");
                 ros::Duration(1).sleep();
                 size_t n = sp.available();
                 if(n!=0){
                    uint8_t buffer[20];
                    n = sp.read(buffer,n);
                     for(int i=0;i<n;i++){
                       std::cout << buffer[i] ;
                   }
                   config_process = 12;
                   }
                break;
            }
            case 12:
            {
                 sp.write("vitalSignsCfg 0.3 0.9 256 512 4 0.1 0.05 100000 300000\r\n");
                 ros::Duration(1).sleep();
                 size_t n = sp.available();
                 if(n!=0){
                    uint8_t buffer[20];
                    n = sp.read(buffer,n);
                     for(int i=0;i<n;i++){
                       std::cout << buffer[i] ;
                   }
                   config_process = 13;
                   }
                break;
            }
            case 13:
            {
                 sp.write("motionDetection 1 20 2.0 0\r\n");
                 ros::Duration(1).sleep();
                 size_t n = sp.available();
                 if(n!=0){
                    uint8_t buffer[20];
                    n = sp.read(buffer,n);
                     for(int i=0;i<n;i++){
                       std::cout << buffer[i] ;
                   }
                   config_process = 14;
                   }
                break;
            }
            case 14:
            {
                 sp.write("sensorStart\r\n");
                 ros::Duration(1).sleep();
                 size_t n = sp.available();
                 if(n!=0){
                    uint8_t buffer[20];
                    n = sp.read(buffer,n);
                     for(int i=0;i<n;i++){
                       std::cout << buffer[i] ;
                   }
                   config_process = 15;
                   }
                break;
            }
          
            default:
                break;
            }
        }
        // sp.write("scan start -1\r\n");
        
      //  loop_rate.sleep();
    }
    sp.close();

    return 0;
    
    
}