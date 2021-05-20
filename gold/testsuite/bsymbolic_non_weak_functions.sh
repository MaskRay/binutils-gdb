#!/bin/sh

# bsymbolic_non_weak_functions.sh -- Test -Bsymbolic-non-weak-functions

# Copyright (C) 2021 Free Software Foundation, Inc.

# This file is part of gold.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street - Fifth Floor, Boston,
# MA 02110-1301, USA.

check_present()
{
    if ! grep -q "$1" bsymbolic_non_weak_functions.stdout
    then
        echo "Did not find $1"
        exit 1
    fi
}

check_absent()
{
    if grep -q "$1" bsymbolic_non_weak_functions.stdout
    then
        echo "Found unexpected $1"
        exit 1
    fi
}

check_present 'GLOB_DAT.*global_data'
check_present 'GLOB_DAT.*weak_fun'

check_present 'JUMP_SLOT.*weak_fun'
check_absent  'JUMP_SLOT.*global_fun'
