// Generated by gencpp from file hrwros_msgs/SensorInformation.msg
// DO NOT EDIT!


#ifndef HRWROS_MSGS_MESSAGE_SENSORINFORMATION_H
#define HRWROS_MSGS_MESSAGE_SENSORINFORMATION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/Range.h>

namespace hrwros_msgs
{
template <class ContainerAllocator>
struct SensorInformation_
{
  typedef SensorInformation_<ContainerAllocator> Type;

  SensorInformation_()
    : sensor_data()
    , maker_name()
    , part_number(0)  {
    }
  SensorInformation_(const ContainerAllocator& _alloc)
    : sensor_data(_alloc)
    , maker_name(_alloc)
    , part_number(0)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::Range_<ContainerAllocator>  _sensor_data_type;
  _sensor_data_type sensor_data;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _maker_name_type;
  _maker_name_type maker_name;

   typedef uint32_t _part_number_type;
  _part_number_type part_number;





  typedef boost::shared_ptr< ::hrwros_msgs::SensorInformation_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hrwros_msgs::SensorInformation_<ContainerAllocator> const> ConstPtr;

}; // struct SensorInformation_

typedef ::hrwros_msgs::SensorInformation_<std::allocator<void> > SensorInformation;

typedef boost::shared_ptr< ::hrwros_msgs::SensorInformation > SensorInformationPtr;
typedef boost::shared_ptr< ::hrwros_msgs::SensorInformation const> SensorInformationConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hrwros_msgs::SensorInformation_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hrwros_msgs::SensorInformation_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hrwros_msgs::SensorInformation_<ContainerAllocator1> & lhs, const ::hrwros_msgs::SensorInformation_<ContainerAllocator2> & rhs)
{
  return lhs.sensor_data == rhs.sensor_data &&
    lhs.maker_name == rhs.maker_name &&
    lhs.part_number == rhs.part_number;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hrwros_msgs::SensorInformation_<ContainerAllocator1> & lhs, const ::hrwros_msgs::SensorInformation_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hrwros_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hrwros_msgs::SensorInformation_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hrwros_msgs::SensorInformation_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hrwros_msgs::SensorInformation_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hrwros_msgs::SensorInformation_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hrwros_msgs::SensorInformation_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hrwros_msgs::SensorInformation_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hrwros_msgs::SensorInformation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d963bb325e7c9c7478db23eeb529f1eb";
  }

  static const char* value(const ::hrwros_msgs::SensorInformation_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd963bb325e7c9c74ULL;
  static const uint64_t static_value2 = 0x78db23eeb529f1ebULL;
};

template<class ContainerAllocator>
struct DataType< ::hrwros_msgs::SensorInformation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hrwros_msgs/SensorInformation";
  }

  static const char* value(const ::hrwros_msgs::SensorInformation_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hrwros_msgs::SensorInformation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# example message file\n"
"sensor_msgs/Range sensor_data # placeholder for the ROS messafe type for interfacing with distance sensors\n"
"string maker_name  # placeholder for manufacturer name\n"
"uint32 part_number  #placeholder for part number of the sensor\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/Range\n"
"# Single range reading from an active ranger that emits energy and reports\n"
"# one range reading that is valid along an arc at the distance measured. \n"
"# This message is  not appropriate for laser scanners. See the LaserScan\n"
"# message if you are working with a laser scanner.\n"
"\n"
"# This message also can represent a fixed-distance (binary) ranger.  This\n"
"# sensor will have min_range===max_range===distance of detection.\n"
"# These sensors follow REP 117 and will output -Inf if the object is detected\n"
"# and +Inf if the object is outside of the detection range.\n"
"\n"
"Header header           # timestamp in the header is the time the ranger\n"
"                        # returned the distance reading\n"
"\n"
"# Radiation type enums\n"
"# If you want a value added to this list, send an email to the ros-users list\n"
"uint8 ULTRASOUND=0\n"
"uint8 INFRARED=1\n"
"\n"
"uint8 radiation_type    # the type of radiation used by the sensor\n"
"                        # (sound, IR, etc) [enum]\n"
"\n"
"float32 field_of_view   # the size of the arc that the distance reading is\n"
"                        # valid for [rad]\n"
"                        # the object causing the range reading may have\n"
"                        # been anywhere within -field_of_view/2 and\n"
"                        # field_of_view/2 at the measured range. \n"
"                        # 0 angle corresponds to the x-axis of the sensor.\n"
"\n"
"float32 min_range       # minimum range value [m]\n"
"float32 max_range       # maximum range value [m]\n"
"                        # Fixed distance rangers require min_range==max_range\n"
"\n"
"float32 range           # range data [m]\n"
"                        # (Note: values < range_min or > range_max\n"
"                        # should be discarded)\n"
"                        # Fixed distance rangers only output -Inf or +Inf.\n"
"                        # -Inf represents a detection within fixed distance.\n"
"                        # (Detection too close to the sensor to quantify)\n"
"                        # +Inf represents no detection within the fixed distance.\n"
"                        # (Object out of range)\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::hrwros_msgs::SensorInformation_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hrwros_msgs::SensorInformation_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sensor_data);
      stream.next(m.maker_name);
      stream.next(m.part_number);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SensorInformation_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hrwros_msgs::SensorInformation_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hrwros_msgs::SensorInformation_<ContainerAllocator>& v)
  {
    s << indent << "sensor_data: ";
    s << std::endl;
    Printer< ::sensor_msgs::Range_<ContainerAllocator> >::stream(s, indent + "  ", v.sensor_data);
    s << indent << "maker_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.maker_name);
    s << indent << "part_number: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.part_number);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HRWROS_MSGS_MESSAGE_SENSORINFORMATION_H
