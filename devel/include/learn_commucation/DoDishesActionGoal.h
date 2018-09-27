// Generated by gencpp from file learn_commucation/DoDishesActionGoal.msg
// DO NOT EDIT!


#ifndef LEARN_COMMUCATION_MESSAGE_DODISHESACTIONGOAL_H
#define LEARN_COMMUCATION_MESSAGE_DODISHESACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <learn_commucation/DoDishesGoal.h>

namespace learn_commucation
{
template <class ContainerAllocator>
struct DoDishesActionGoal_
{
  typedef DoDishesActionGoal_<ContainerAllocator> Type;

  DoDishesActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  DoDishesActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::learn_commucation::DoDishesGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::learn_commucation::DoDishesActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::learn_commucation::DoDishesActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct DoDishesActionGoal_

typedef ::learn_commucation::DoDishesActionGoal_<std::allocator<void> > DoDishesActionGoal;

typedef boost::shared_ptr< ::learn_commucation::DoDishesActionGoal > DoDishesActionGoalPtr;
typedef boost::shared_ptr< ::learn_commucation::DoDishesActionGoal const> DoDishesActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::learn_commucation::DoDishesActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::learn_commucation::DoDishesActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace learn_commucation

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'learn_commucation': ['/home/hxp/catkin_learn/src/learn_communication/msg', '/home/hxp/catkin_learn/devel/share/learn_commucation/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::learn_commucation::DoDishesActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::learn_commucation::DoDishesActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::learn_commucation::DoDishesActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::learn_commucation::DoDishesActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::learn_commucation::DoDishesActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::learn_commucation::DoDishesActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::learn_commucation::DoDishesActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "83f2a96811c1f4ed2d6e73eb983a3cb9";
  }

  static const char* value(const ::learn_commucation::DoDishesActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x83f2a96811c1f4edULL;
  static const uint64_t static_value2 = 0x2d6e73eb983a3cb9ULL;
};

template<class ContainerAllocator>
struct DataType< ::learn_commucation::DoDishesActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "learn_commucation/DoDishesActionGoal";
  }

  static const char* value(const ::learn_commucation::DoDishesActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::learn_commucation::DoDishesActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
DoDishesGoal goal\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: learn_commucation/DoDishesGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
uint32 dishwasher_id\n\
";
  }

  static const char* value(const ::learn_commucation::DoDishesActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::learn_commucation::DoDishesActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DoDishesActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::learn_commucation::DoDishesActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::learn_commucation::DoDishesActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::learn_commucation::DoDishesGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LEARN_COMMUCATION_MESSAGE_DODISHESACTIONGOAL_H
