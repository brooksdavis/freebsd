# $FreeBSD$

# Find the highest version DDP package file and build a .ko for it
PKG_FILES!=	ls ${SRCTOP}/sys/contrib/dev/ice/ice-*.pkg | sort -V
PKG_FILE=	${PKG_FILE:[-1]}

.if empty(PKG_FILE)
.error Unable to locate the DDP package binary file
.endif

.info Found ${PKG_FILE}


PKG_VER_ARR=	${PKG_FILE:T:R:S/^ice-//:S/-signed$//:ts.}
PKG_VER_MAJ=	${PKG_VER_ARR:[1]}
PKG_VER_MIN=	${PKG_VER_ARR:[2]}
PKG_VER_UPD=	${PKG_VER_ARR:[3]}
PKG_VER_DFT=	${PKG_VER_ARR:[4]}
PKG_VERSION!=	printf "0x%02x%02x%02x%02x" "${PKG_VER_MAJ}" "${PKG_VER_MIN}" "${PKG_VER_UPD}" "${PKG_VER_DFT}"

KMOD= 	ice_ddp
FIRMWS=	${PKG_FILE}:ice_ddp:${PKG_VERSION}
.include <bsd.kmod.mk>
