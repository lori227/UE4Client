# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget protobuf::libprotobuf-lite protobuf::libprotobuf protobuf::libprotoc protobuf::protoc)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target protobuf::libprotobuf-lite
add_library(protobuf::libprotobuf-lite STATIC IMPORTED)

set_target_properties(protobuf::libprotobuf-lite PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src"
)

# Create imported target protobuf::libprotobuf
add_library(protobuf::libprotobuf STATIC IMPORTED)

set_target_properties(protobuf::libprotobuf PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src"
)

# Create imported target protobuf::libprotoc
add_library(protobuf::libprotoc STATIC IMPORTED)

set_target_properties(protobuf::libprotoc PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "D:/Work/Frame/trunk/KFLibrary/google/protobuf/src"
  INTERFACE_LINK_LIBRARIES "protobuf::libprotobuf"
)

# Create imported target protobuf::protoc
add_executable(protobuf::protoc IMPORTED)

# Import target "protobuf::libprotobuf-lite" for configuration "Debug"
set_property(TARGET protobuf::libprotobuf-lite APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(protobuf::libprotobuf-lite PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/Debug/libprotobuf-lited.lib"
  )

# Import target "protobuf::libprotobuf" for configuration "Debug"
set_property(TARGET protobuf::libprotobuf APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(protobuf::libprotobuf PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/Debug/libprotobufd.lib"
  )

# Import target "protobuf::libprotoc" for configuration "Debug"
set_property(TARGET protobuf::libprotoc APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(protobuf::libprotoc PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/Debug/libprotocd.lib"
  )

# Import target "protobuf::protoc" for configuration "Debug"
set_property(TARGET protobuf::protoc APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(protobuf::protoc PROPERTIES
  IMPORTED_LOCATION_DEBUG "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/Debug/protoc.exe"
  )

# Import target "protobuf::libprotobuf-lite" for configuration "Release"
set_property(TARGET protobuf::libprotobuf-lite APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(protobuf::libprotobuf-lite PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/Release/libprotobuf-lite.lib"
  )

# Import target "protobuf::libprotobuf" for configuration "Release"
set_property(TARGET protobuf::libprotobuf APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(protobuf::libprotobuf PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/Release/libprotobuf.lib"
  )

# Import target "protobuf::libprotoc" for configuration "Release"
set_property(TARGET protobuf::libprotoc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(protobuf::libprotoc PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/Release/libprotoc.lib"
  )

# Import target "protobuf::protoc" for configuration "Release"
set_property(TARGET protobuf::protoc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(protobuf::protoc PROPERTIES
  IMPORTED_LOCATION_RELEASE "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/Release/protoc.exe"
  )

# Import target "protobuf::libprotobuf-lite" for configuration "MinSizeRel"
set_property(TARGET protobuf::libprotobuf-lite APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(protobuf::libprotobuf-lite PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_MINSIZEREL "CXX"
  IMPORTED_LOCATION_MINSIZEREL "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/MinSizeRel/libprotobuf-lite.lib"
  )

# Import target "protobuf::libprotobuf" for configuration "MinSizeRel"
set_property(TARGET protobuf::libprotobuf APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(protobuf::libprotobuf PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_MINSIZEREL "CXX"
  IMPORTED_LOCATION_MINSIZEREL "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/MinSizeRel/libprotobuf.lib"
  )

# Import target "protobuf::libprotoc" for configuration "MinSizeRel"
set_property(TARGET protobuf::libprotoc APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(protobuf::libprotoc PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_MINSIZEREL "CXX"
  IMPORTED_LOCATION_MINSIZEREL "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/MinSizeRel/libprotoc.lib"
  )

# Import target "protobuf::protoc" for configuration "MinSizeRel"
set_property(TARGET protobuf::protoc APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(protobuf::protoc PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/MinSizeRel/protoc.exe"
  )

# Import target "protobuf::libprotobuf-lite" for configuration "RelWithDebInfo"
set_property(TARGET protobuf::libprotobuf-lite APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(protobuf::libprotobuf-lite PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/RelWithDebInfo/libprotobuf-lite.lib"
  )

# Import target "protobuf::libprotobuf" for configuration "RelWithDebInfo"
set_property(TARGET protobuf::libprotobuf APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(protobuf::libprotobuf PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/RelWithDebInfo/libprotobuf.lib"
  )

# Import target "protobuf::libprotoc" for configuration "RelWithDebInfo"
set_property(TARGET protobuf::libprotoc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(protobuf::libprotoc PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/RelWithDebInfo/libprotoc.lib"
  )

# Import target "protobuf::protoc" for configuration "RelWithDebInfo"
set_property(TARGET protobuf::protoc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(protobuf::protoc PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "D:/KFrame/Fighter/UE4Client/Plugins/libprotobuf/ThirdParty/include/cmake/vsbuild/RelWithDebInfo/protoc.exe"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
