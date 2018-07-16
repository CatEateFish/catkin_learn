#include <ros/ros.h>
#include <std_msgs/String.h>


//接收订阅到的消息后，会进入到回调函数
void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
    //将接收到的消息打印出来
    ROS_INFO("I Head [%s]", msg->data.c_str());
}



int main(int argc, char *argv[])
{

    //初始化ROS节点
    ros::init(argc, argv, "listener");
    

    //创建ROS句柄
    ros::NodeHandle n;

    //创建一个subscriber,订阅名为chatter的话题，注册回调函数为chatterCallback
    ros::Subscriber chatterSub_ = n.subscribe("chatter", 1000, chatterCallback);
    
    //循环等待回调函数
    ros::spin();
    return 0;
}