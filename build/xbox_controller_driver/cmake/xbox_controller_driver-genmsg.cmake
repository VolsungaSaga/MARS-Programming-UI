# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "xbox_controller_driver: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ixbox_controller_driver:/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(xbox_controller_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/ControllerState.msg" NAME_WE)
add_custom_target(_xbox_controller_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbox_controller_driver" "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/ControllerState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/Tank.msg" NAME_WE)
add_custom_target(_xbox_controller_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbox_controller_driver" "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/Tank.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(xbox_controller_driver
  "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbox_controller_driver
)
_generate_msg_cpp(xbox_controller_driver
  "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/Tank.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbox_controller_driver
)

### Generating Services

### Generating Module File
_generate_module_cpp(xbox_controller_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbox_controller_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(xbox_controller_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(xbox_controller_driver_generate_messages xbox_controller_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/ControllerState.msg" NAME_WE)
add_dependencies(xbox_controller_driver_generate_messages_cpp _xbox_controller_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/Tank.msg" NAME_WE)
add_dependencies(xbox_controller_driver_generate_messages_cpp _xbox_controller_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbox_controller_driver_gencpp)
add_dependencies(xbox_controller_driver_gencpp xbox_controller_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbox_controller_driver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(xbox_controller_driver
  "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbox_controller_driver
)
_generate_msg_eus(xbox_controller_driver
  "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/Tank.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbox_controller_driver
)

### Generating Services

### Generating Module File
_generate_module_eus(xbox_controller_driver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbox_controller_driver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(xbox_controller_driver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(xbox_controller_driver_generate_messages xbox_controller_driver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/ControllerState.msg" NAME_WE)
add_dependencies(xbox_controller_driver_generate_messages_eus _xbox_controller_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/Tank.msg" NAME_WE)
add_dependencies(xbox_controller_driver_generate_messages_eus _xbox_controller_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbox_controller_driver_geneus)
add_dependencies(xbox_controller_driver_geneus xbox_controller_driver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbox_controller_driver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(xbox_controller_driver
  "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbox_controller_driver
)
_generate_msg_lisp(xbox_controller_driver
  "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/Tank.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbox_controller_driver
)

### Generating Services

### Generating Module File
_generate_module_lisp(xbox_controller_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbox_controller_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(xbox_controller_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(xbox_controller_driver_generate_messages xbox_controller_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/ControllerState.msg" NAME_WE)
add_dependencies(xbox_controller_driver_generate_messages_lisp _xbox_controller_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/Tank.msg" NAME_WE)
add_dependencies(xbox_controller_driver_generate_messages_lisp _xbox_controller_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbox_controller_driver_genlisp)
add_dependencies(xbox_controller_driver_genlisp xbox_controller_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbox_controller_driver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(xbox_controller_driver
  "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbox_controller_driver
)
_generate_msg_nodejs(xbox_controller_driver
  "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/Tank.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbox_controller_driver
)

### Generating Services

### Generating Module File
_generate_module_nodejs(xbox_controller_driver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbox_controller_driver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(xbox_controller_driver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(xbox_controller_driver_generate_messages xbox_controller_driver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/ControllerState.msg" NAME_WE)
add_dependencies(xbox_controller_driver_generate_messages_nodejs _xbox_controller_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/Tank.msg" NAME_WE)
add_dependencies(xbox_controller_driver_generate_messages_nodejs _xbox_controller_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbox_controller_driver_gennodejs)
add_dependencies(xbox_controller_driver_gennodejs xbox_controller_driver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbox_controller_driver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(xbox_controller_driver
  "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbox_controller_driver
)
_generate_msg_py(xbox_controller_driver
  "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/Tank.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbox_controller_driver
)

### Generating Services

### Generating Module File
_generate_module_py(xbox_controller_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbox_controller_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(xbox_controller_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(xbox_controller_driver_generate_messages xbox_controller_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/ControllerState.msg" NAME_WE)
add_dependencies(xbox_controller_driver_generate_messages_py _xbox_controller_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/david/git clones/MARS-Programming-UI/src/xbox_controller_driver/msg/Tank.msg" NAME_WE)
add_dependencies(xbox_controller_driver_generate_messages_py _xbox_controller_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbox_controller_driver_genpy)
add_dependencies(xbox_controller_driver_genpy xbox_controller_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbox_controller_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbox_controller_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbox_controller_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(xbox_controller_driver_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(xbox_controller_driver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbox_controller_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbox_controller_driver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(xbox_controller_driver_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(xbox_controller_driver_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbox_controller_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbox_controller_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(xbox_controller_driver_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(xbox_controller_driver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbox_controller_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbox_controller_driver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(xbox_controller_driver_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(xbox_controller_driver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbox_controller_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbox_controller_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbox_controller_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(xbox_controller_driver_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(xbox_controller_driver_generate_messages_py std_msgs_generate_messages_py)
endif()
