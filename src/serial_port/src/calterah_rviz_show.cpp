#include <ros/ros.h>
#include <pcl/point_cloud.h>
#include <pcl_conversions/pcl_conversions.h>
#include <sensor_msgs/PointCloud2.h>
#include <serial_port/calterah_point_data.h>
#include <iostream>
#include <math.h>

class Calterah_Rviz_Show
{
public:
    Calterah_Rviz_Show();
    void point_show_Callback(const serial_port::calterah_point_data::ConstPtr &msg);
private:
    ros::NodeHandle n;
    ros::Publisher pub;
    ros::Subscriber sub;
    sensor_msgs::PointCloud2 output;
    pcl::PointCloud<pcl::PointXYZ> cloud;
};

Calterah_Rviz_Show::Calterah_Rviz_Show()
{
    pub = n.advertise<sensor_msgs::PointCloud2>("calterah_point_out",100);
    sub = n.subscribe("calterah_point_data",100,&Calterah_Rviz_Show::point_show_Callback,this);
}

void Calterah_Rviz_Show::point_show_Callback(const serial_port::calterah_point_data::ConstPtr &msg)
{
    cloud.points.resize(msg->frame_size);
    
    for(int i=0;i<msg->frame_size;i++)
    {

        cloud.points[i].x = msg->range[i]*sin(msg->ang[i])*cos(45-msg->ang_elv[i]);
        cloud.points[i].y = msg->range[i]*cos(msg->ang[i])*cos(45-msg->ang_elv[i]);
        cloud.points[i].z = 2.5-msg->range[i]*sin(45-msg->ang_elv[i]);
    }
    std::cout << "points[0]:  "<< cloud.points[0].x<<  "  "<<   cloud.points[0].y<<   "  " <<  cloud.points[0].z <<  std::endl;
    std::cout << "range[0]:  "<< msg->range[0]<<  "  "<<   msg->ang[0]<<   "  " << msg->ang_elv[0] <<  std::endl;
    pcl::toROSMsg(cloud,output);
    output.header.frame_id = "map";
    pub.publish(output);
    
}

int main(int argc, char ** argv)
{
    ros::init(argc,argv,"calterah_rviz_show");
    Calterah_Rviz_Show show;

    ros::spin();
    return 0;
    
}