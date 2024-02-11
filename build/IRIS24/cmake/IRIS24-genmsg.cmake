# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "IRIS24: 3 messages, 0 services")

set(MSG_I_FLAGS "-IIRIS24:/home/ubuntu/FP_ws/src/IRIS24/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(IRIS24_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/BS2PC.msg" NAME_WE)
add_custom_target(_IRIS24_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "IRIS24" "/home/ubuntu/FP_ws/src/IRIS24/msg/BS2PC.msg" ""
)

get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/PC2BS.msg" NAME_WE)
add_custom_target(_IRIS24_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "IRIS24" "/home/ubuntu/FP_ws/src/IRIS24/msg/PC2BS.msg" ""
)

get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/TT.msg" NAME_WE)
add_custom_target(_IRIS24_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "IRIS24" "/home/ubuntu/FP_ws/src/IRIS24/msg/TT.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(IRIS24
  "/home/ubuntu/FP_ws/src/IRIS24/msg/BS2PC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/IRIS24
)
_generate_msg_cpp(IRIS24
  "/home/ubuntu/FP_ws/src/IRIS24/msg/PC2BS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/IRIS24
)
_generate_msg_cpp(IRIS24
  "/home/ubuntu/FP_ws/src/IRIS24/msg/TT.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/IRIS24
)

### Generating Services

### Generating Module File
_generate_module_cpp(IRIS24
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/IRIS24
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(IRIS24_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(IRIS24_generate_messages IRIS24_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/BS2PC.msg" NAME_WE)
add_dependencies(IRIS24_generate_messages_cpp _IRIS24_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/PC2BS.msg" NAME_WE)
add_dependencies(IRIS24_generate_messages_cpp _IRIS24_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/TT.msg" NAME_WE)
add_dependencies(IRIS24_generate_messages_cpp _IRIS24_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(IRIS24_gencpp)
add_dependencies(IRIS24_gencpp IRIS24_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS IRIS24_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(IRIS24
  "/home/ubuntu/FP_ws/src/IRIS24/msg/BS2PC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/IRIS24
)
_generate_msg_eus(IRIS24
  "/home/ubuntu/FP_ws/src/IRIS24/msg/PC2BS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/IRIS24
)
_generate_msg_eus(IRIS24
  "/home/ubuntu/FP_ws/src/IRIS24/msg/TT.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/IRIS24
)

### Generating Services

### Generating Module File
_generate_module_eus(IRIS24
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/IRIS24
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(IRIS24_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(IRIS24_generate_messages IRIS24_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/BS2PC.msg" NAME_WE)
add_dependencies(IRIS24_generate_messages_eus _IRIS24_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/PC2BS.msg" NAME_WE)
add_dependencies(IRIS24_generate_messages_eus _IRIS24_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/TT.msg" NAME_WE)
add_dependencies(IRIS24_generate_messages_eus _IRIS24_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(IRIS24_geneus)
add_dependencies(IRIS24_geneus IRIS24_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS IRIS24_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(IRIS24
  "/home/ubuntu/FP_ws/src/IRIS24/msg/BS2PC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/IRIS24
)
_generate_msg_lisp(IRIS24
  "/home/ubuntu/FP_ws/src/IRIS24/msg/PC2BS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/IRIS24
)
_generate_msg_lisp(IRIS24
  "/home/ubuntu/FP_ws/src/IRIS24/msg/TT.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/IRIS24
)

### Generating Services

### Generating Module File
_generate_module_lisp(IRIS24
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/IRIS24
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(IRIS24_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(IRIS24_generate_messages IRIS24_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/BS2PC.msg" NAME_WE)
add_dependencies(IRIS24_generate_messages_lisp _IRIS24_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/PC2BS.msg" NAME_WE)
add_dependencies(IRIS24_generate_messages_lisp _IRIS24_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/TT.msg" NAME_WE)
add_dependencies(IRIS24_generate_messages_lisp _IRIS24_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(IRIS24_genlisp)
add_dependencies(IRIS24_genlisp IRIS24_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS IRIS24_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(IRIS24
  "/home/ubuntu/FP_ws/src/IRIS24/msg/BS2PC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/IRIS24
)
_generate_msg_nodejs(IRIS24
  "/home/ubuntu/FP_ws/src/IRIS24/msg/PC2BS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/IRIS24
)
_generate_msg_nodejs(IRIS24
  "/home/ubuntu/FP_ws/src/IRIS24/msg/TT.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/IRIS24
)

### Generating Services

### Generating Module File
_generate_module_nodejs(IRIS24
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/IRIS24
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(IRIS24_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(IRIS24_generate_messages IRIS24_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/BS2PC.msg" NAME_WE)
add_dependencies(IRIS24_generate_messages_nodejs _IRIS24_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/PC2BS.msg" NAME_WE)
add_dependencies(IRIS24_generate_messages_nodejs _IRIS24_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/TT.msg" NAME_WE)
add_dependencies(IRIS24_generate_messages_nodejs _IRIS24_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(IRIS24_gennodejs)
add_dependencies(IRIS24_gennodejs IRIS24_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS IRIS24_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(IRIS24
  "/home/ubuntu/FP_ws/src/IRIS24/msg/BS2PC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/IRIS24
)
_generate_msg_py(IRIS24
  "/home/ubuntu/FP_ws/src/IRIS24/msg/PC2BS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/IRIS24
)
_generate_msg_py(IRIS24
  "/home/ubuntu/FP_ws/src/IRIS24/msg/TT.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/IRIS24
)

### Generating Services

### Generating Module File
_generate_module_py(IRIS24
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/IRIS24
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(IRIS24_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(IRIS24_generate_messages IRIS24_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/BS2PC.msg" NAME_WE)
add_dependencies(IRIS24_generate_messages_py _IRIS24_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/PC2BS.msg" NAME_WE)
add_dependencies(IRIS24_generate_messages_py _IRIS24_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/FP_ws/src/IRIS24/msg/TT.msg" NAME_WE)
add_dependencies(IRIS24_generate_messages_py _IRIS24_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(IRIS24_genpy)
add_dependencies(IRIS24_genpy IRIS24_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS IRIS24_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/IRIS24)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/IRIS24
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(IRIS24_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/IRIS24)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/IRIS24
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(IRIS24_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/IRIS24)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/IRIS24
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(IRIS24_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/IRIS24)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/IRIS24
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(IRIS24_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/IRIS24)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/IRIS24\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/IRIS24
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(IRIS24_generate_messages_py std_msgs_generate_messages_py)
endif()
