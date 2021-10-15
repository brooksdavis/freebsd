#
# A number of header files in sys/* have, going back to 7th Edition Unix in
# 1979, reqiured other files (like sys/types.h) to compile. Likewise the 4BSD
# networking code has had prerequisites. However, going back to around the turn
# of the century, other systems have made them be independently includable
# (wide-spread header include protection post-dates 7th edition Unix by maybe 4
# or 5 years judging from netnews sources). Start down the path of making them
# all independently includable by creating this test that fails buildworld when
# they are not.
#
PROG=	hdrtest
SRCS=	hdrtest.c
INTERNALPROG=	This is a compile-only test
MAN=

# Some files have to be clean for extra defines too...
#CFLAGS.event.c=	-D_WANT_KEVENT32 -D_WANT_FREEBSD11_KEVENT

.include "goodfiles.inc"

.for h in ${HDRS}
SRCS+=	${h:R}.c
CLEANFILES+=${h:R}.c
${h:R}.c:
	echo "#include <$h>" > ${.TARGET}
.endfor

#
# Target to make the current known good list. Only run it when this hdrtest is
# building so the list never shrinks (except when files are removed entirely
# that are on the list).
#
goodfiles.inc!
	@(cd ${SRCTOP}/sys; \
	echo "# DO NOT EDIT-- this file is automatically @""generated."; \
	echo "HDRS= \\"; \
	for i in sys/*.h net*/*.h; do \
		echo "#include <$$i>" | \
			${CC} ${CFLAGS} -xc - -c -o /dev/null 2> /dev/null && \
			echo "	$$i \\"; \
	done; \
	echo) > ${.CURDIR}/goodfiles.inc

.include <bsd.prog.mk>
