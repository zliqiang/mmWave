#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>
#include <iostream>

class RVIZ_TEST
{
public:
    RVIZ_TEST();

     void rviz_test_Callback(const sensor_msgs::PointCloud2::ConstPtr &msg);

private:

    ros::NodeHandle n;
    ros::Subscriber sub;
};

RVIZ_TEST::RVIZ_TEST()
{
    sub = n.subscribe("calterah_point_out",1,&RVIZ_TEST::rviz_test_Callback,this);
    std::cout << "init over" << std::endl;
}

void RVIZ_TEST::rviz_test_Callback(const sensor_msgs::PointCloud2::ConstPtr &msg)
{
   // std::cout << "callback " << std::endl;
    std::cout << "frame id"<< msg->header.frame_id << std::endl;
    
    //std::cout << msg->data.data()<< std::endl;
    //std::cout << sizeof(msg->data.data) << std::endl;
}

int main(int argc, char ** argv)
{
    ros::init(argc,argv,"rviz_test");



    RVIZ_TEST Rviz_test;

    ros::spin();//反复调用当前可触发的回调函数，阻塞
    return 0;
}