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
# email   : olta1224@esss.se
# Date    : generated by 2018Jan26-1426-43CET
# version : 0.0.0 
#
# template file is generated by prepare_module.bash with 673bad4dce8e231fad30e8f70c6cfa69dfd15130

# Please look at many other _module_.Makefile in e3-* repository
# 

#where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include $(REQUIRE_TOOLS)/driver.makefile

APP:=memDisplay

SOURCES = memDisplay.c memDisplay_iocsh.c
USR_CFLAGS += -D WITH_SYMBOLNAME

HEADERS = memDisplay.h

DBDS = memDisplay.dbd

