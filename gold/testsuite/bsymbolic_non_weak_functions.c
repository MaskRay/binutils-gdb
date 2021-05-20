// bsymbolic_non_weak_functions.c -- Test -Bsymbolic-non-weak-functions

// Copyright (C) 2021 Free Software Foundation, Inc.

// This file is part of gold.

// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street - Fifth Floor, Boston,
// MA 02110-1301, USA.

// The goal of this program is to verify that the --dynamic-list option
// allows overrides for symbols listed in the file, and does symbolic
// binding for symbols not listed.

#include <stdint.h>

int global_data = 0;

__attribute__ ((noinline)) void global_fun (void);
void global_fun (void) { }

__attribute__ ((weak, noinline)) void weak_fun (void);
void weak_fun (void) { }

uintptr_t test (void);

uintptr_t test (void)
{
  uintptr_t x = global_data;
  x += (uintptr_t)&global_fun;
  x += (uintptr_t)&weak_fun;
  global_fun ();
  weak_fun ();
  return x;
}
