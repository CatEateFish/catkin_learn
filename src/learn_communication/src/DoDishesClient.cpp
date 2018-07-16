#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include "learn_commucation/DoDishesAction.h"


typedef actionlib::SimpleActionClient<learn_commucation::DoDishesAction> Client;

//当cation完成之后调用该回调函数一次
void doneCB(const actionlib::SimpleClientGoalState& state,
            const learn_commucation::DoDishesResultConstPtr& result)
{
    ROS_INFO("yay! the dishes are now clean ");
    ros::shutdown();
}

//当action激活后会调用该回调函数一次
void actionCB()
{
    ROS_INFO("Goal just went action");
}

//收到feedback后会调用该回调函数
void feedbackCB(const learn_commucation::DoDishesFeedbackConstPtr& feedback)
{
    ROS_INFO("persent complete : %f" , feedback->percent_complete);
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "DoDishesClient");
    ros::NodeHandle n;
    //定义一个客户端
    Client client("DoDishes",true);
    //等待服务器端
    ROS_INFO("waiting for action server to start");
    client.waitForServer();
    ROS_INFO("Action server started,sending goal");
    //创建一个action的goal
    learn_commucation::DoDishesGoal goal_;
    goal_.dishwasher_id = 1;
    //发送cation的goal给服务器端，并设定回调函数
    client.sendGoal(goal_,&doneCB,&actionCB,&feedbackCB);
    ros::spin();


    return 0;
}











