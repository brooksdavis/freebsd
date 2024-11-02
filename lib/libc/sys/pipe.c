/*-
 * SPDX-License-Identifier: BSD-2-Clause
 *
 * Copyright (c) 2016 SRI International
 *
 * This software was developed by SRI International and the University of
 * Cambridge Computer Laboratory under DARPA/AFRL contract FA8750-10-C-0237
 * ("CTSRD"), as part of the DARPA CRASH research programme.
 */

#include <libsys.h>
#include <unistd.h>

__weak_reference(__sys_pipe, pipe);

int
__sys_pipe(int fildes[2])
{
	return (__sys_pipe2(fildes, 0));
}
