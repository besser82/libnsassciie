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
# File:         CMakeLists.txt
#
# Purpose:      Build-script for CMake
#
# Developed by: 2014  Björn Esser  <bjoern.esser@gmail.com>

##### Autogeneration of files #####
# Find all files
file( GLOB AUTOFILES RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}" "*.in" )

# Autogenerate
foreach( SRCFILE ${AUTOFILES} )
  string(REGEX REPLACE "\\.in$" "" GENERATEDFILE "${SRCFILE}" )
  message( STATUS "Autogenerating ${GENERATEDFILE}" )
  configure_file( "${SRCFILE}"
                  "${CMAKE_CURRENT_BINARY_DIR}/${GENERATEDFILE}"
                  @ONLY
                )
endforeach( SRCFILE ${AUTOFILES} )
