# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hrwros_week0_assignment: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ihrwros_week0_assignment:/home/miguel/hrwros_ws/src/hrwros_week0_assignment/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hrwros_week0_assignment_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/miguel/hrwros_ws/src/hrwros_week0_assignment/msg/Dummy.msg" NAME_WE)
add_custom_target(_hrwros_week0_assignment_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_week0_assignment" "/home/miguel/hrwros_ws/src/hrwros_week0_assignment/msg/Dummy.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hrwros_week0_assignment
  "/home/miguel/hrwros_ws/src/hrwros_week0_assignment/msg/Dummy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_week0_assignment
)

### Generating Services

### Generating Module File
_generate_module_cpp(hrwros_week0_assignment
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_week0_assignment
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hrwros_week0_assignment_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hrwros_week0_assignment_generate_messages hrwros_week0_assignment_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/hrwros_ws/src/hrwros_week0_assignment/msg/Dummy.msg" NAME_WE)
add_dependencies(hrwros_week0_assignment_generate_messages_cpp _hrwros_week0_assignment_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrwros_week0_assignment_gencpp)
add_dependencies(hrwros_week0_assignment_gencpp hrwros_week0_assignment_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrwros_week0_assignment_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hrwros_week0_assignment
  "/home/miguel/hrwros_ws/src/hrwros_week0_assignment/msg/Dummy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_week0_assignment
)

### Generating Services

### Generating Module File
_generate_module_eus(hrwros_week0_assignment
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_week0_assignment
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hrwros_week0_assignment_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hrwros_week0_assignment_generate_messages hrwros_week0_assignment_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/hrwros_ws/src/hrwros_week0_assignment/msg/Dummy.msg" NAME_WE)
add_dependencies(hrwros_week0_assignment_generate_messages_eus _hrwros_week0_assignment_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrwros_week0_assignment_geneus)
add_dependencies(hrwros_week0_assignment_geneus hrwros_week0_assignment_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrwros_week0_assignment_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hrwros_week0_assignment
  "/home/miguel/hrwros_ws/src/hrwros_week0_assignment/msg/Dummy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_week0_assignment
)

### Generating Services

### Generating Module File
_generate_module_lisp(hrwros_week0_assignment
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_week0_assignment
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hrwros_week0_assignment_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hrwros_week0_assignment_generate_messages hrwros_week0_assignment_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/hrwros_ws/src/hrwros_week0_assignment/msg/Dummy.msg" NAME_WE)
add_dependencies(hrwros_week0_assignment_generate_messages_lisp _hrwros_week0_assignment_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrwros_week0_assignment_genlisp)
add_dependencies(hrwros_week0_assignment_genlisp hrwros_week0_assignment_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrwros_week0_assignment_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hrwros_week0_assignment
  "/home/miguel/hrwros_ws/src/hrwros_week0_assignment/msg/Dummy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_week0_assignment
)

### Generating Services

### Generating Module File
_generate_module_nodejs(hrwros_week0_assignment
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_week0_assignment
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hrwros_week0_assignment_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hrwros_week0_assignment_generate_messages hrwros_week0_assignment_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/hrwros_ws/src/hrwros_week0_assignment/msg/Dummy.msg" NAME_WE)
add_dependencies(hrwros_week0_assignment_generate_messages_nodejs _hrwros_week0_assignment_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrwros_week0_assignment_gennodejs)
add_dependencies(hrwros_week0_assignment_gennodejs hrwros_week0_assignment_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrwros_week0_assignment_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hrwros_week0_assignment
  "/home/miguel/hrwros_ws/src/hrwros_week0_assignment/msg/Dummy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_week0_assignment
)

### Generating Services

### Generating Module File
_generate_module_py(hrwros_week0_assignment
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_week0_assignment
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hrwros_week0_assignment_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hrwros_week0_assignment_generate_messages hrwros_week0_assignment_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/hrwros_ws/src/hrwros_week0_assignment/msg/Dummy.msg" NAME_WE)
add_dependencies(hrwros_week0_assignment_generate_messages_py _hrwros_week0_assignment_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrwros_week0_assignment_genpy)
add_dependencies(hrwros_week0_assignment_genpy hrwros_week0_assignment_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrwros_week0_assignment_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_week0_assignment)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_week0_assignment
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hrwros_week0_assignment_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_week0_assignment)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_week0_assignment
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hrwros_week0_assignment_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_week0_assignment)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_week0_assignment
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hrwros_week0_assignment_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_week0_assignment)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_week0_assignment
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hrwros_week0_assignment_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_week0_assignment)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_week0_assignment\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_week0_assignment
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hrwros_week0_assignment_generate_messages_py std_msgs_generate_messages_py)
endif()
