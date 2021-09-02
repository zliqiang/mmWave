#include <ros/ros.h>
#include <serial_port/serial_data.h>
#include <std_msgs/Float32.h>
#include <string.h>
#include <stdio.h>
#include <serial_port/calterah_point_data.h>

void calterah_data_Callback(const serial_port::serial_data::ConstPtr &msg);

serial_port::calterah_point_data point_msg;


#define DATA_SIZE 10000
char recv_data[DATA_SIZE];
unsigned int write_p = 0,read_p = 0;
unsigned int frame_id = 0;
unsigned int cdi_num = 0,track_output_num = 0,raw_num = 0;

unsigned char got_head = 0;
unsigned int head_index = 0;
unsigned char write_overwrite=0;
unsigned char read_overwrite=0;


#define FInd_O 4
#define Find_Number 1
#define Find_Point  3
#define Find_BK 2
unsigned int step;
unsigned int get_point_num = 0;

inline unsigned int get_ready_size(void);

unsigned int get_ready_size(void)
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
unsigned int temp_index;
unsigned char get_O = 0;
unsigned int O_index = 0;

class GetSerialDateAndPubPointDate
{
public:
    GetSerialDateAndPubPointDate();

    void calterah_data_Callback(const serial_port::serial_data::ConstPtr &msg);

    float P[150],range[150],vel[150],ang[150],ang_elv[150];
private:
    ros::NodeHandle n;
    ros::Publisher pub;
    ros::Subscriber sub;

};
GetSerialDateAndPubPointDate::GetSerialDateAndPubPointDate()
{
    pub = n.advertise<serial_port::calterah_point_data>("calterah_point_data",100);

    // sub = n.subscribe("serial_data",100,calterah_data_Callback);
    sub = n.subscribe("serial_data",100,&GetSerialDateAndPubPointDate::calterah_data_Callback,this);
}

void GetSerialDateAndPubPointDate::calterah_data_Callback(const serial_port::serial_data::ConstPtr &msg)
{
    std_msgs::Float32 x,y,z;
    x.data = 1;
    y.data = 2;
    z.data = 3;
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

        //std::cout << "wp:" << write_p << "    "<<"rp" << read_p << std::endl;
        //std::cout << recv_data[write_p] ;
        
        if((get_ready_size()>=25)&&(step == FInd_O))//找桢头
        {
            if(recv_data[read_p++] == '-')
            {
                if(recv_data[read_p++] == '-')
                {
                    if(recv_data[read_p++] == '-')
                    {
                        if(recv_data[read_p++] == ' ')
                        {
                            if(recv_data[read_p++] == 'F')
                            {   
                                sscanf(&recv_data[read_p-1],"F %d O %d/%d/%d! ---\r",&frame_id,&cdi_num,&track_output_num,&raw_num);
                                step = Find_BK;
                                //  std::cout << frame_id << std::endl;
                            }
                        }
                    }
                }
            }
         }
            else if(step == Find_BK)
            {
               
                if(recv_data[read_p++] == 'B')
                {
                    if(recv_data[read_p++]  =='K' )
                    {
                        read_p +=2;
                        step = Find_Point;
                       // std::cout << frame_id << std::endl;
                    }
                }
            }
            else if((step == Find_Point)&&(get_ready_size()>=50))
            {
                    if(recv_data[read_p++] == ':')
                    {
                        
                        //std::cout << recv_data[read_p-1] << std::endl;
                        sscanf(&recv_data[read_p-1],": P %f, R %f, V %f, A %f, E %f\r",&P[get_point_num],&range[get_point_num],&vel[get_point_num],&ang[get_point_num],&ang_elv[get_point_num]);
                        //read_p = read_p +20;
                        std::cout << "P:  " <<range[0] << std::endl;
                        point_msg.frame_id = frame_id;
                        point_msg.P[get_point_num] = P[get_point_num];
                        point_msg.range[get_point_num] = range[get_point_num];
                        point_msg.vel[get_point_num] = vel[get_point_num];
                        point_msg.ang[get_point_num] = ang[get_point_num];
                        point_msg.ang_elv[get_point_num] = ang_elv[get_point_num];

                        // point_msg.P.push_back(P[get_point_num]);
                        // point_msg.range.push_back(range[get_point_num]);
                        // point_msg.vel.push_back(vel[get_point_num]);
                        // point_msg.ang.push_back(ang[get_point_num]);
                        // point_msg.ang_elv.push_back(ang_elv[get_point_num]);
                        //point_msg.P[get_point_num] = P[get_point_num];

                        get_point_num++;
                        if(get_point_num >= track_output_num)
                            {
                                point_msg.frame_size = track_output_num;
                                pub.publish(point_msg);
                                
                                get_point_num = 0;
                                 step = FInd_O;
                            }
                    }
            }
            
}

int main(int argc, char ** argv)
{
    step = FInd_O;
    ros::init(argc,argv,"calterah_data_analyze");



    GetSerialDateAndPubPointDate GSPP_Object;

    ros::spin();//反复调用当前可触发的回调函数，阻塞
    return 0;
}
