#include <ros/ros.h>
#include <serial/serial.h>
#include <iostream>
#include <serial_port/serial_data.h>
#define Calterah_Radar 0
#define TI_Radar 1

int main(int argc, char** argv)
{
    ros::init(argc,argv,"serial_listener");//解析参数，命名节点

    ros::NodeHandle nh;                          //创建句柄，实例化node
    serial_port::serial_data msg;
    msg.data = 0;
    
    ros::Publisher pub = nh.advertise<serial_port::serial_data>("serial_data",1000) ;//创建publisher
    pub.publish(msg);

    serial::Serial sp;

    serial::Timeout to = serial::Timeout::simpleTimeout(1000);
#if TI_Radar
    sp.setPort("/dev/ttyACM1");
#endif
#if Calterah_Radar
    sp.setPort("/dev/ttyUSB0");
#endif
    sp.setBaudrate(921600);
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
        ROS_INFO_STREAM("serial port is opened");
#if Calterah_Radar
        xx = sp.write("scan start -1\r\n");
        std::cout << "xx:"<< xx << std::endl;
#endif
    }
    else
    {
        return -1;
    }

   // ros::Rate loop_rate(2000); //循环控制  频率   500HZ

    while(ros::ok())
    {
        // sp.write("scan start -1\r\n");
        size_t n = sp.available();
        if(n!=0)
        {
            uint8_t buffer[1024];
            n = sp.read(buffer,n);
        
        for(int i=0; i<n; i++)
            {
                //16进制的方式打印到屏幕
               // std::cout << buffer[i];
                msg.data = buffer[i];
                pub.publish(msg);
            }
        }
      //  loop_rate.sleep();
    }
    sp.close();

    return 0;
    
    
}