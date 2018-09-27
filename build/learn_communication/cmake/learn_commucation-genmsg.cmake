# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "learn_commucation: 8 messages, 1 services")

set(MSG_I_FLAGS "-Ilearn_commucation:/home/hxp/catkin_learn/src/learn_communication/msg;-Ilearn_commucation:/home/hxp/catkin_learn/devel/share/learn_commucation/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(learn_commucation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg" NAME_WE)
add_custom_target(_learn_commucation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learn_commucation" "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg" ""
)

get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionGoal.msg" NAME_WE)
add_custom_target(_learn_commucation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learn_commucation" "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionGoal.msg" "actionlib_msgs/GoalID:learn_commucation/DoDishesGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg" NAME_WE)
add_custom_target(_learn_commucation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learn_commucation" "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg" ""
)

get_filename_component(_filename "/home/hxp/catkin_learn/src/learn_communication/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_learn_commucation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learn_commucation" "/home/hxp/catkin_learn/src/learn_communication/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/hxp/catkin_learn/src/learn_communication/msg/person.msg" NAME_WE)
add_custom_target(_learn_commucation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learn_commucation" "/home/hxp/catkin_learn/src/learn_communication/msg/person.msg" ""
)

get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionResult.msg" NAME_WE)
add_custom_target(_learn_commucation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learn_commucation" "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionResult.msg" "actionlib_msgs/GoalID:learn_commucation/DoDishesResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesAction.msg" NAME_WE)
add_custom_target(_learn_commucation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learn_commucation" "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesAction.msg" "learn_commucation/DoDishesActionResult:learn_commucation/DoDishesGoal:std_msgs/Header:learn_commucation/DoDishesActionFeedback:learn_commucation/DoDishesActionGoal:learn_commucation/DoDishesResult:actionlib_msgs/GoalID:learn_commucation/DoDishesFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionFeedback.msg" NAME_WE)
add_custom_target(_learn_commucation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learn_commucation" "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionFeedback.msg" "actionlib_msgs/GoalID:learn_commucation/DoDishesFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg" NAME_WE)
add_custom_target(_learn_commucation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learn_commucation" "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learn_commucation
)
_generate_msg_cpp(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learn_commucation
)
_generate_msg_cpp(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learn_commucation
)
_generate_msg_cpp(learn_commucation
  "/home/hxp/catkin_learn/src/learn_communication/msg/person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learn_commucation
)
_generate_msg_cpp(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learn_commucation
)
_generate_msg_cpp(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionResult.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionFeedback.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionGoal.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learn_commucation
)
_generate_msg_cpp(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learn_commucation
)
_generate_msg_cpp(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learn_commucation
)

### Generating Services
_generate_srv_cpp(learn_commucation
  "/home/hxp/catkin_learn/src/learn_communication/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learn_commucation
)

### Generating Module File
_generate_module_cpp(learn_commucation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learn_commucation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(learn_commucation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(learn_commucation_generate_messages learn_commucation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_cpp _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_cpp _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_cpp _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/src/learn_communication/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(learn_commucation_generate_messages_cpp _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/src/learn_communication/msg/person.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_cpp _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_cpp _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_cpp _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_cpp _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_cpp _learn_commucation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(learn_commucation_gencpp)
add_dependencies(learn_commucation_gencpp learn_commucation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS learn_commucation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learn_commucation
)
_generate_msg_eus(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learn_commucation
)
_generate_msg_eus(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learn_commucation
)
_generate_msg_eus(learn_commucation
  "/home/hxp/catkin_learn/src/learn_communication/msg/person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learn_commucation
)
_generate_msg_eus(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learn_commucation
)
_generate_msg_eus(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionResult.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionFeedback.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionGoal.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learn_commucation
)
_generate_msg_eus(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learn_commucation
)
_generate_msg_eus(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learn_commucation
)

### Generating Services
_generate_srv_eus(learn_commucation
  "/home/hxp/catkin_learn/src/learn_communication/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learn_commucation
)

### Generating Module File
_generate_module_eus(learn_commucation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learn_commucation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(learn_commucation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(learn_commucation_generate_messages learn_commucation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_eus _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_eus _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_eus _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/src/learn_communication/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(learn_commucation_generate_messages_eus _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/src/learn_communication/msg/person.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_eus _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_eus _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_eus _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_eus _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_eus _learn_commucation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(learn_commucation_geneus)
add_dependencies(learn_commucation_geneus learn_commucation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS learn_commucation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learn_commucation
)
_generate_msg_lisp(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learn_commucation
)
_generate_msg_lisp(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learn_commucation
)
_generate_msg_lisp(learn_commucation
  "/home/hxp/catkin_learn/src/learn_communication/msg/person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learn_commucation
)
_generate_msg_lisp(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learn_commucation
)
_generate_msg_lisp(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionResult.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionFeedback.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionGoal.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learn_commucation
)
_generate_msg_lisp(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learn_commucation
)
_generate_msg_lisp(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learn_commucation
)

### Generating Services
_generate_srv_lisp(learn_commucation
  "/home/hxp/catkin_learn/src/learn_communication/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learn_commucation
)

### Generating Module File
_generate_module_lisp(learn_commucation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learn_commucation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(learn_commucation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(learn_commucation_generate_messages learn_commucation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_lisp _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_lisp _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_lisp _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/src/learn_communication/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(learn_commucation_generate_messages_lisp _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/src/learn_communication/msg/person.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_lisp _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_lisp _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_lisp _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_lisp _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_lisp _learn_commucation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(learn_commucation_genlisp)
add_dependencies(learn_commucation_genlisp learn_commucation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS learn_commucation_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learn_commucation
)
_generate_msg_nodejs(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learn_commucation
)
_generate_msg_nodejs(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learn_commucation
)
_generate_msg_nodejs(learn_commucation
  "/home/hxp/catkin_learn/src/learn_communication/msg/person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learn_commucation
)
_generate_msg_nodejs(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learn_commucation
)
_generate_msg_nodejs(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionResult.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionFeedback.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionGoal.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learn_commucation
)
_generate_msg_nodejs(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learn_commucation
)
_generate_msg_nodejs(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learn_commucation
)

### Generating Services
_generate_srv_nodejs(learn_commucation
  "/home/hxp/catkin_learn/src/learn_communication/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learn_commucation
)

### Generating Module File
_generate_module_nodejs(learn_commucation
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learn_commucation
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(learn_commucation_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(learn_commucation_generate_messages learn_commucation_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_nodejs _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_nodejs _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_nodejs _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/src/learn_communication/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(learn_commucation_generate_messages_nodejs _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/src/learn_communication/msg/person.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_nodejs _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_nodejs _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_nodejs _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_nodejs _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_nodejs _learn_commucation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(learn_commucation_gennodejs)
add_dependencies(learn_commucation_gennodejs learn_commucation_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS learn_commucation_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learn_commucation
)
_generate_msg_py(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learn_commucation
)
_generate_msg_py(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learn_commucation
)
_generate_msg_py(learn_commucation
  "/home/hxp/catkin_learn/src/learn_communication/msg/person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learn_commucation
)
_generate_msg_py(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learn_commucation
)
_generate_msg_py(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionResult.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionFeedback.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionGoal.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learn_commucation
)
_generate_msg_py(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learn_commucation
)
_generate_msg_py(learn_commucation
  "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learn_commucation
)

### Generating Services
_generate_srv_py(learn_commucation
  "/home/hxp/catkin_learn/src/learn_communication/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learn_commucation
)

### Generating Module File
_generate_module_py(learn_commucation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learn_commucation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(learn_commucation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(learn_commucation_generate_messages learn_commucation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_py _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_py _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_py _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/src/learn_communication/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(learn_commucation_generate_messages_py _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/src/learn_communication/msg/person.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_py _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_py _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_py _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_py _learn_commucation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hxp/catkin_learn/devel/share/learn_commucation/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(learn_commucation_generate_messages_py _learn_commucation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(learn_commucation_genpy)
add_dependencies(learn_commucation_genpy learn_commucation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS learn_commucation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learn_commucation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learn_commucation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(learn_commucation_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(learn_commucation_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learn_commucation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learn_commucation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(learn_commucation_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(learn_commucation_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learn_commucation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learn_commucation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(learn_commucation_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(learn_commucation_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learn_commucation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learn_commucation
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(learn_commucation_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(learn_commucation_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learn_commucation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learn_commucation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learn_commucation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(learn_commucation_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(learn_commucation_generate_messages_py std_msgs_generate_messages_py)
endif()
