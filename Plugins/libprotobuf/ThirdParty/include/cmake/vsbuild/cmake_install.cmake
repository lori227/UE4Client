# Install script for directory: D:/Work/Frame/trunk/KFLibrary/google/protobuf/cmake

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files/protobuf")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibprotobuf-litex" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/Debug/libprotobuf-lited.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/Release/libprotobuf-lite.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/MinSizeRel/libprotobuf-lite.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/RelWithDebInfo/libprotobuf-lite.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibprotobufx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/Debug/libprotobufd.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/Release/libprotobuf.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/MinSizeRel/libprotobuf.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/RelWithDebInfo/libprotobuf.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibprotocx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/Debug/libprotocd.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/Release/libprotoc.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/MinSizeRel/libprotoc.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/RelWithDebInfo/libprotoc.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotocx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/Debug/protoc.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/Release/protoc.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/MinSizeRel/protoc.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/RelWithDebInfo/protoc.exe")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES
    "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/protobuf.pc"
    "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/protobuf-lite.pc"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "any.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/any.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "any.pb.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/any.pb.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "api.pb.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/api.pb.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "arena.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/arena.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "arena_impl.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/arena_impl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "arenastring.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/arenastring.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler" TYPE FILE RENAME "code_generator.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/code_generator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler" TYPE FILE RENAME "command_line_interface.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/command_line_interface.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler/cpp" TYPE FILE RENAME "cpp_generator.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/cpp/cpp_generator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler/csharp" TYPE FILE RENAME "csharp_generator.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/csharp/csharp_generator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler/csharp" TYPE FILE RENAME "csharp_names.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/csharp/csharp_names.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler" TYPE FILE RENAME "importer.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/importer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler/java" TYPE FILE RENAME "java_generator.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/java/java_generator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler/java" TYPE FILE RENAME "java_names.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/java/java_names.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler/js" TYPE FILE RENAME "js_generator.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/js/js_generator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler/js" TYPE FILE RENAME "well_known_types_embed.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/js/well_known_types_embed.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler/objectivec" TYPE FILE RENAME "objectivec_generator.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/objectivec/objectivec_generator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler/objectivec" TYPE FILE RENAME "objectivec_helpers.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/objectivec/objectivec_helpers.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler" TYPE FILE RENAME "parser.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/parser.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler/php" TYPE FILE RENAME "php_generator.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/php/php_generator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler" TYPE FILE RENAME "plugin.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/plugin.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler" TYPE FILE RENAME "plugin.pb.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/plugin.pb.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler/python" TYPE FILE RENAME "python_generator.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/python/python_generator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler/ruby" TYPE FILE RENAME "ruby_generator.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/ruby/ruby_generator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "descriptor.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/descriptor.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "descriptor.pb.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/descriptor.pb.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "descriptor_database.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/descriptor_database.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "duration.pb.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/duration.pb.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "dynamic_message.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/dynamic_message.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "empty.pb.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/empty.pb.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "extension_set.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/extension_set.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "field_mask.pb.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/field_mask.pb.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "generated_enum_reflection.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/generated_enum_reflection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "generated_enum_util.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/generated_enum_util.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "generated_message_reflection.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/generated_message_reflection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "generated_message_table_driven.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/generated_message_table_driven.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "generated_message_util.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/generated_message_util.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "has_bits.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/has_bits.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "implicit_weak_message.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/implicit_weak_message.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "inlined_string_field.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/inlined_string_field.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/io" TYPE FILE RENAME "coded_stream.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/io/coded_stream.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/io" TYPE FILE RENAME "gzip_stream.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/io/gzip_stream.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/io" TYPE FILE RENAME "printer.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/io/printer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/io" TYPE FILE RENAME "strtod.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/io/strtod.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/io" TYPE FILE RENAME "tokenizer.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/io/tokenizer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/io" TYPE FILE RENAME "zero_copy_stream.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/io/zero_copy_stream.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/io" TYPE FILE RENAME "zero_copy_stream_impl.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/io/zero_copy_stream_impl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/io" TYPE FILE RENAME "zero_copy_stream_impl_lite.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "map.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/map.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "map_entry.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/map_entry.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "map_entry_lite.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/map_entry_lite.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "map_field.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/map_field.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "map_field_inl.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/map_field_inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "map_field_lite.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/map_field_lite.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "map_type_handler.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/map_type_handler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "message.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/message.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "message_lite.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/message_lite.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "metadata.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/metadata.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "metadata_lite.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/metadata_lite.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "reflection.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/reflection.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "reflection_ops.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/reflection_ops.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "repeated_field.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/repeated_field.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "service.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/service.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "source_context.pb.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/source_context.pb.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "struct.pb.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/struct.pb.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/stubs" TYPE FILE RENAME "bytestream.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/stubs/bytestream.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/stubs" TYPE FILE RENAME "callback.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/stubs/callback.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/stubs" TYPE FILE RENAME "casts.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/stubs/casts.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/stubs" TYPE FILE RENAME "common.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/stubs/common.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/stubs" TYPE FILE RENAME "fastmem.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/stubs/fastmem.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/stubs" TYPE FILE RENAME "hash.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/stubs/hash.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/stubs" TYPE FILE RENAME "logging.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/stubs/logging.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/stubs" TYPE FILE RENAME "macros.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/stubs/macros.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/stubs" TYPE FILE RENAME "mutex.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/stubs/mutex.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/stubs" TYPE FILE RENAME "once.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/stubs/once.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/stubs" TYPE FILE RENAME "platform_macros.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/stubs/platform_macros.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/stubs" TYPE FILE RENAME "port.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/stubs/port.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/stubs" TYPE FILE RENAME "singleton.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/stubs/singleton.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/stubs" TYPE FILE RENAME "status.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/stubs/status.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/stubs" TYPE FILE RENAME "stl_util.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/stubs/stl_util.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/stubs" TYPE FILE RENAME "stringpiece.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/stubs/stringpiece.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/stubs" TYPE FILE RENAME "template_util.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/stubs/template_util.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "text_format.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/text_format.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "timestamp.pb.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/timestamp.pb.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "type.pb.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/type.pb.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "unknown_field_set.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/unknown_field_set.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/util" TYPE FILE RENAME "delimited_message_util.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/util/delimited_message_util.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/util" TYPE FILE RENAME "field_comparator.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/util/field_comparator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/util" TYPE FILE RENAME "field_mask_util.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/util/field_mask_util.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/util" TYPE FILE RENAME "json_util.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/util/json_util.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/util" TYPE FILE RENAME "message_differencer.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/util/message_differencer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/util" TYPE FILE RENAME "time_util.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/util/time_util.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/util" TYPE FILE RENAME "type_resolver.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/util/type_resolver.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/util" TYPE FILE RENAME "type_resolver_util.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/util/type_resolver_util.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "wire_format.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/wire_format.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "wire_format_lite.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/wire_format_lite.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "wire_format_lite_inl.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/wire_format_lite_inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "wrappers.pb.h" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/wrappers.pb.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "any.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/any.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "api.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/api.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler" TYPE FILE RENAME "plugin.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/plugin.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "descriptor.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/descriptor.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "duration.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/duration.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "empty.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/empty.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "field_mask.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/field_mask.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "source_context.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/source_context.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "struct.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/struct.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "timestamp.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/timestamp.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "type.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/type.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "wrappers.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/wrappers.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-protosx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "descriptor.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/descriptor.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-protosx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "any.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/any.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-protosx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "api.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/api.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-protosx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "duration.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/duration.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-protosx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "empty.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/empty.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-protosx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "field_mask.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/field_mask.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-protosx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "source_context.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/source_context.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-protosx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "struct.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/struct.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-protosx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "timestamp.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/timestamp.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-protosx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "type.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/type.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-protosx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf" TYPE FILE RENAME "wrappers.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/wrappers.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-protosx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google/protobuf/compiler" TYPE FILE RENAME "plugin.proto" FILES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src/google/protobuf/compiler/plugin.proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-exportx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/protobuf-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/protobuf-targets.cmake"
         "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/CMakeFiles/Export/cmake/protobuf-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/protobuf-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/protobuf-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/CMakeFiles/Export/cmake/protobuf-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/CMakeFiles/Export/cmake/protobuf-targets-debug.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/CMakeFiles/Export/cmake/protobuf-targets-minsizerel.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/CMakeFiles/Export/cmake/protobuf-targets-relwithdebinfo.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/CMakeFiles/Export/cmake/protobuf-targets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xprotobuf-exportx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE DIRECTORY FILES "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/cmake/" REGEX "/protobuf\\-targets\\.cmake$" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
