#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include "learn_commucation/DoDishesAction.h"


typedef actionlib::SimpleActionServer<learn_commucation::DoDishesAction> Server;

//收到action的goal后调用该回调函数
void execute(const learn_commucation::DoDishesGoalConstPtr& goal, Server* as)
{
    ros::Rate r(1);

    learn_commucation::DoDishesFeedback feedback_;
    ROS_INFO("Dishwasher %d is working" , goal->dishwasher_id);

    //假设洗盘子的进度，并按照1hz的频率发布进度feedback
    for (size_t i = 1; i <= 10; i++)
    {
        feedback_.percent_complete = i * 10;
        as->publishFeedback(feedback_);
        r.sleep();
    }
    //当cation完成后想客户端返回结果
    ROS_INFO("Dishwasher %d finish working" , goal->dishwasher_id);
    as->setSucceeded();
    
}



int main(int argc, char *argv[])
{
    ros::init(argc, argv, "doDishesServer");
    ros::NodeHandle n;
    //定义一个服务器
     Server server(n, "DoDishes", boost::bind(&execute,_1,&server),false);
    //服务器开始运作
    server.start();
    ros::spin();

    return 0;
}





