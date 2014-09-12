# vim: set fileencoding=utf-8 :
# -*- coding: utf-8 -*-
#
# libnsassciie
# Implementation of "Nonlinear Spike-and-Slap Sparse Coding for Interpretable
# Image Encoding", as published [1] by Jaquelyn Shelton et al., in C++.
#
# [1]  http://www.user.tu-berlin.de/shelton/
#
# Copyright (c) 2014  Björn Esser  <bjoern.esser@gmail.com>
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
#   1. Redistributions of source code must retain the above copyright
#      notice, this list of conditions and the following disclaimer.
#
#   2. Redistributions in binary form must reproduce the above copyright
#      notice, this list of conditions and the following disclaimer in the
#      documentation and/or other materials provided with the distribution.
#
#   3. Neither the name of the copyright holder nor the names of its
#      contributors may be used to endorse or promote products derived
#      from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# File:         project_config.cmake
#
# Purpose:      Configuration and settings for the cmake-project
#
# Developed by: 2014  Björn Esser  <bjoern.esser@gmail.com>

##### CMake settings #####


##### Project settings #####
# Version
set( VERSION_MAJOR "0" )
set( VERSION_MINOR "0" )
set( VERSION_PATCH "1" )
set( VERSION "${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_PATCH}" )

# Meta-data
string( REPLACE "lib" "" LIBRARY_NAME "${CMAKE_PROJECT_NAME}" )
set( DESCRIPTION "Implementation of \"Nonlinear Spike-and-Slap Sparse " )
set( DESCRIPTION "${DESCRIPTION}Coding for Interpretable Image Encoding" )
set( DESCRIPTION "${DESCRIPTION}\" in C++." )
set( URL "https://github.com/besser82/libnsassciie" )


##### Global build configuration #####


##### Directories #####
# Prefix
if( NOT DEFINED CMAKE_INSTALL_PREFIX )
  set( CMAKE_INSTALL_PREFIX "/usr/local"
       CACHE PATH "global installation-prefix"
     )
endif( NOT DEFINED CMAKE_INSTALL_PREFIX )

# Headers
if( NOT DEFINED INCLUDE_INSTALL_DIR )
  set( INCLUDE_INSTALL_DIR "${CMAKE_INSTALL_PREFIX}/include"
       CACHE PATH "top-level directory for header-files"
     )
endif( NOT DEFINED INCLUDE_INSTALL_DIR )

# Libraries
if( NOT DEFINED LIB_SUFFIX )
  get_property( IS_LIB64 GLOBAL PROPERTY FIND_LIBRARY_USE_LIB64_PATHS )
  if( IS_LIB64 )
    set( LIB_SUFFIX "64"
         CACHE STRING "architecture-dependent suffix for lib-directory"
       )
  else( IS_LIB64 )
    set( LIB_SUFFIX ""
         CACHE STRING "architecture-dependent suffix for lib-directory"
       )
  endif( IS_LIB64 )
else( NOT DEFINED LIB_SUFFIX )
  set( LIB_SUFFIX "${LIB_SUFFIX}"
       CACHE STRING "architecture-dependent suffix for lib-directory"
     )
endif( NOT DEFINED LIB_SUFFIX )
if( NOT DEFINED LIB_INSTALL_DIR )
  set( LIB_INSTALL_DIR "${CMAKE_INSTALL_PREFIX}/lib${LIB_SUFFIX}"
       CACHE PATH "directory for libraries"
     )
endif( NOT DEFINED LIB_INSTALL_DIR )

# Common files
if( NOT DEFINED SHARE_INSTALL_PREFIX )
  set( SHARE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}/share"
       CACHE PATH "top-level directory for shared/common-files"
     )
endif( NOT DEFINED SHARE_INSTALL_PREFIX )

# System config-files
if( NOT DEFINED SYSCONF_INSTALL_DIR )
  set( SYSCONF_INSTALL_DIR "${CMAKE_INSTALL_PREFIX}/etc"
       CACHE PATH "top-level directory for system-configuration"
     )
endif( NOT DEFINED SYSCONF_INSTALL_DIR )
