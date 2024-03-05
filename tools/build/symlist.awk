#-
# SPDX-License-Identifier: BSD-2-Clause
#
# Copyright (c) 2024 SRI International
#
# This software was developed by SRI International, the University of
# Cambridge Computer Laboratory (Department of Computer Science and
# Technology), and Capabilities Limited under Defense Advanced Research
# Projects Agency (DARPA) Contract No. FA8750-24-C-B047 ("DEC").
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
# OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
# SUCH DAMAGE.
#

# symlist.awk - process "readelf -sW" output to produce compat symbol list

BEGIN {
	symtab = ""
}

/^Symbol table / {
	symtab = $3
	gsub(/'/, "", symtab)
}

/^ *[0-9]+:/ {
	# We don't (currently) care what symbols the library depends on
	if ($7 == "UND") next

	# Don't track symbols in the private namespace.  Instead, depend
	# on linking with --no-undefined-version to detect dropped symbols.
	if ($8 ~ /@FBSDprivate_/) next

	# Only print symbols from .dynsym.  Unstriped libraries may have
	# internal symbol tables and we can't rely on readelf supporting
	# -D (llvm-readelf doesn't).
	if (symtab != ".dynsym") next

	# readelf -sW header:
	#    Num:    Value          Size Type    Bind   Vis      Ndx Name
	#    1       2              3    4       5      6        7   8
	print $8 " " tolower($4) " " tolower($5) " " tolower($6)
}
