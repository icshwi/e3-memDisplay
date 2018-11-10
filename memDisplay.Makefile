#
#  Copyright (c) 2017 - Present  European Spallation Source ERIC
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
#
# Author  : olta1224
#           Jeong Han Lee
# email   : olta1224@esss.se
#           jeonghan.lee@gmail.com
# Date    : Thursday, September 13 19:35:31 CEST 2018
# version : 0.0.1


where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
include $(E3_REQUIRE_TOOLS)/driver.makefile
include $(E3_REQUIRE_CONFIG)/DECOUPLE_FLAGS

ifneq ($(strip $(SYMBOLNAME_DEP_VERSION)),)
symbolname_VERSION=$(SYMBOLNAME_DEP_VERSION)
endif




APP:=memDisplay

SOURCES = memDisplay.c memDisplay_iocsh.c
USR_CFLAGS += -D WITH_SYMBOLNAME

HEADERS = memDisplay.h

DBDS = memDisplay.dbd


# db rule is the default in RULES_E3, so add the empty one

db:
#
.PHONY: vlibs
vlibs:
#
