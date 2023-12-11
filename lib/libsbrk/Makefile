PACKAGE=	clibs
LIB=		sbrk
SHLIB_MAJOR=	1

LDFLAGS+=-Wl,--filter=libc.so.7
VERSION_DEF=${SRCTOP}/lib/libc/Versions.def
SYMBOL_MAPS=${.CURDIR}/Symbol.map

SRCS=		${LIB}.c

.include <bsd.lib.mk>
