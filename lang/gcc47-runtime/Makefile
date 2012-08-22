# $NetBSD$

PKGNAME=	${GCC_PKGNAME}-runtime-${GCC_DIST_VERSION}
COMMENT=	The GNU Compiler Collection (GCC) 4.7 - Runtime Libraries

.include "../../lang/gcc47/Makefile.common"

INSTALL_TARGET=		install-target-libgcc
# Order is important, others are dependent on libquadmath if it was built
.if !empty(PKG_OPTIONS:Mgcc-inplace-math)
INSTALL_TARGET+=	install-target-libquadmath
.endif
.if !empty(PKG_OPTIONS:Mgcc-c++)
INSTALL_TARGET+=	install-target-libstdc++-v3
.endif
.if !empty(PKG_OPTIONS:Mgcc-fortran)
INSTALL_TARGET+=	install-target-libgfortran
.endif
.if !empty(PKG_OPTIONS:Mgcc-go)
INSTALL_TARGET+=	install-target-libgo
.endif
.if !empty(PKG_OPTIONS:Mgcc-objc)
INSTALL_TARGET+=	install-target-libobjc
.endif
INSTALL_TARGET+=	install-target-libgomp
INSTALL_TARGET+=	install-target-libitm
INSTALL_TARGET+=	install-target-libssp
INSTALL_TARGET+=	install-libiberty

GENERATE_PLIST= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} ${GCC_SUBPREFIX} \( -type f -o -type l \) -print | ${SORT} ;

post-install:
	for dir in include info lib/gcc share; do		\
		${RM} -rf ${DESTDIR}${GCC_PREFIX}/$$dir;	\
	done

.include "../../mk/bsd.pkg.mk"
