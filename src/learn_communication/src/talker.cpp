#include "ros/ros.h"
#include <sstream>
#include <std_msgs/String.h>

int main(int argc, char *argv[])
{
    /* code for main function */
    // ROS节点初始化
    ros::init(argc, argv, "talker");
    // 创建节点句柄
    ros::NodeHandle n;
    //创建一个publisher，发布名为chatter的topic，消息类型为 std_msgs::String
    ros::Publisher chatterPub_ = n.advertise<std_msgs::String>("chatter", 1000);
    // 设置循环的频率
    ros::Rate loopRate(10);

    int count_ = 0;
    while (ros::ok())
    {
        //初始化 std_msgs::String 的类型消息
        std_msgs::String msgs_;
        std::stringstream ss_;
        ss_ << "hello world " << count_;
        msgs_.data = ss_.str();
        //发布消息
        ROS_INFO("%s", msgs_.data.c_str());
        chatterPub_.publish(msgs_);

        //循环等待回调函数
        ros::spinOnce();

        //按照循环频率延时
        loopRate.sleep();
        ++ count_;
    }
    


    
    return 0;
}