#include <ros/ros.h>
#include <cstdlib>
#include "learn_commucation/AddTwoInts.h"

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "AddTwoIntsClient");
    if(argc != 3)
    {
        ROS_INFO("usage : add_two_ints_client X Y");
        return 1;
    }
    ros::NodeHandle n;
    ros::ServiceClient client_ = n.serviceClient<learn_commucation::AddTwoInts>("addTwoInts");

    learn_commucation::AddTwoInts srv_;
    srv_.request.a = atoll(argv[1]);
    srv_.request.b = atoll(argv[2]);
    if(client_.call(srv_))
    {
        ROS_INFO("Sum : %ld",(long int)srv_.response.sum);
    }else
    {
        ROS_ERROR("Failed to call service adTwoInts");
        return 1;
    }
    return 0;
}
