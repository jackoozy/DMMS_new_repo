# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "foreman_msg: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iforeman_msg:/home/jackoozy/manipulator_ws/src/foreman_msg/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(foreman_msg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jackoozy/manipulator_ws/src/foreman_msg/msg/Command.msg" NAME_WE)
add_custom_target(_foreman_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "foreman_msg" "/home/jackoozy/manipulator_ws/src/foreman_msg/msg/Command.msg" "std_msgs/Int8:std_msgs/Bool:std_msgs/Float32"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(foreman_msg
  "/home/jackoozy/manipulator_ws/src/foreman_msg/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int8.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/foreman_msg
)

### Generating Services

### Generating Module File
_generate_module_cpp(foreman_msg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/foreman_msg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(foreman_msg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(foreman_msg_generate_messages foreman_msg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jackoozy/manipulator_ws/src/foreman_msg/msg/Command.msg" NAME_WE)
add_dependencies(foreman_msg_generate_messages_cpp _foreman_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(foreman_msg_gencpp)
add_dependencies(foreman_msg_gencpp foreman_msg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS foreman_msg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(foreman_msg
  "/home/jackoozy/manipulator_ws/src/foreman_msg/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int8.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/foreman_msg
)

### Generating Services

### Generating Module File
_generate_module_eus(foreman_msg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/foreman_msg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(foreman_msg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(foreman_msg_generate_messages foreman_msg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jackoozy/manipulator_ws/src/foreman_msg/msg/Command.msg" NAME_WE)
add_dependencies(foreman_msg_generate_messages_eus _foreman_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(foreman_msg_geneus)
add_dependencies(foreman_msg_geneus foreman_msg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS foreman_msg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(foreman_msg
  "/home/jackoozy/manipulator_ws/src/foreman_msg/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int8.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/foreman_msg
)

### Generating Services

### Generating Module File
_generate_module_lisp(foreman_msg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/foreman_msg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(foreman_msg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(foreman_msg_generate_messages foreman_msg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jackoozy/manipulator_ws/src/foreman_msg/msg/Command.msg" NAME_WE)
add_dependencies(foreman_msg_generate_messages_lisp _foreman_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(foreman_msg_genlisp)
add_dependencies(foreman_msg_genlisp foreman_msg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS foreman_msg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(foreman_msg
  "/home/jackoozy/manipulator_ws/src/foreman_msg/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int8.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/foreman_msg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(foreman_msg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/foreman_msg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(foreman_msg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(foreman_msg_generate_messages foreman_msg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jackoozy/manipulator_ws/src/foreman_msg/msg/Command.msg" NAME_WE)
add_dependencies(foreman_msg_generate_messages_nodejs _foreman_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(foreman_msg_gennodejs)
add_dependencies(foreman_msg_gennodejs foreman_msg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS foreman_msg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(foreman_msg
  "/home/jackoozy/manipulator_ws/src/foreman_msg/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int8.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/foreman_msg
)

### Generating Services

### Generating Module File
_generate_module_py(foreman_msg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/foreman_msg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(foreman_msg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(foreman_msg_generate_messages foreman_msg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jackoozy/manipulator_ws/src/foreman_msg/msg/Command.msg" NAME_WE)
add_dependencies(foreman_msg_generate_messages_py _foreman_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(foreman_msg_genpy)
add_dependencies(foreman_msg_genpy foreman_msg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS foreman_msg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/foreman_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/foreman_msg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(foreman_msg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/foreman_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/foreman_msg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(foreman_msg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/foreman_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/foreman_msg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(foreman_msg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/foreman_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/foreman_msg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(foreman_msg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/foreman_msg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/foreman_msg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/foreman_msg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(foreman_msg_generate_messages_py std_msgs_generate_messages_py)
endif()
