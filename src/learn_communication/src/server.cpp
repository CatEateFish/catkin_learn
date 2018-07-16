#include <ros/ros.h>
#include "learn_commucation/AddTwoInts.h"

//service 回调函数 输入参数req,输出参数res
bool add(learn_commucation::AddTwoInts::Request& req,
        learn_commucation::AddTwoInts::Response& res)
{
    res.sum = req.a + req.b;
    ROS_INFO("request x = %ld , y = %ld, ",(long int)req.a,(long int)req.b);
    ROS_INFO("response : [%ld] ", (long int )res.sum); 
    return true;
}





int main(int argc, char *argv[])
{
    //ROS 节点初始化
    ros::init(argc, argv, "addTwoIntsServer");
    
    //创建ROS 句柄
    ros::NodeHandle n;

    //创建一个名为addTwoInts 的service 注册回调函数add
    ros::ServiceServer server_ =  n.advertiseService("addTwoInts", add);
    //循环等待回调函数
    ros::spin();
    return 0;
}

