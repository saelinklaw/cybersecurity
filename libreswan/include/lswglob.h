/* Thread / logger friendly glob(), for libreswan.
 *
 * Copyright (C) 2005 Michael Richardson <mcr@xelerance.com>
 * Copyright (C) 2017 D. Hugh Redelmeier <hugh@mimosa.com>
 * Copyright (C) 2017 Paul Wouters <paul@libreswan.org>
 * Copyright (C) 2020 Andrew Cagney
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.  See <https://www.gnu.org/licenses/gpl2.txt>.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * for more details.
 */

#ifndef LSWGLOB_H
#define LSWGLOB_H

#include <glob.h>

#ifndef GLOB_ABORTED
#define GLOB_ABORTED GLOB_ABEND        /* fix for old versions */
#endif

struct logger;

int lswglob(const char *pattern, glob_t *pglob, const char *what, struct logger *logger);

#endif
