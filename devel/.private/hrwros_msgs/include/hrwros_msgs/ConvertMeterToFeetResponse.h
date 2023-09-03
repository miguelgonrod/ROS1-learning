// Generated by gencpp from file hrwros_msgs/ConvertMeterToFeetResponse.msg
// DO NOT EDIT!


#ifndef HRWROS_MSGS_MESSAGE_CONVERTMETERTOFEETRESPONSE_H
#define HRWROS_MSGS_MESSAGE_CONVERTMETERTOFEETRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hrwros_msgs
{
template <class ContainerAllocator>
struct ConvertMeterToFeetResponse_
{
  typedef ConvertMeterToFeetResponse_<ContainerAllocator> Type;

  ConvertMeterToFeetResponse_()
    : distance_feet(0.0)
    , success(false)  {
    }
  ConvertMeterToFeetResponse_(const ContainerAllocator& _alloc)
    : distance_feet(0.0)
    , success(false)  {
  (void)_alloc;
    }



   typedef double _distance_feet_type;
  _distance_feet_type distance_feet;

   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ConvertMeterToFeetResponse_

typedef ::hrwros_msgs::ConvertMeterToFeetResponse_<std::allocator<void> > ConvertMeterToFeetResponse;

typedef boost::shared_ptr< ::hrwros_msgs::ConvertMeterToFeetResponse > ConvertMeterToFeetResponsePtr;
typedef boost::shared_ptr< ::hrwros_msgs::ConvertMeterToFeetResponse const> ConvertMeterToFeetResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator1> & lhs, const ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator2> & rhs)
{
  return lhs.distance_feet == rhs.distance_feet &&
    lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator1> & lhs, const ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hrwros_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a1e3afbb19bd7a378a88d85bbef815e6";
  }

  static const char* value(const ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa1e3afbb19bd7a37ULL;
  static const uint64_t static_value2 = 0x8a88d85bbef815e6ULL;
};

template<class ContainerAllocator>
struct DataType< ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hrwros_msgs/ConvertMeterToFeetResponse";
  }

  static const char* value(const ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 distance_feet       # Response message: distance in feet after conversion\n"
"bool success                # response message: success or failure\n"
;
  }

  static const char* value(const ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.distance_feet);
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConvertMeterToFeetResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hrwros_msgs::ConvertMeterToFeetResponse_<ContainerAllocator>& v)
  {
    s << indent << "distance_feet: ";
    Printer<double>::stream(s, indent + "  ", v.distance_feet);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HRWROS_MSGS_MESSAGE_CONVERTMETERTOFEETRESPONSE_H