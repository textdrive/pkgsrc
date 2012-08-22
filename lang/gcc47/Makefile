# $NetBSD: Makefile,v 1.6 2012/08/20 07:22:09 sbd Exp $

PKGNAME=	${GCC_PKGNAME}-${GCC_DIST_VERSION}
COMMENT=	The GNU Compiler Collection (GCC)
PKGREVISION=	4

DEPENDS+=	${GCC_PKGNAME}-compiler>=${GCC_DIST_VERSION}:../../lang/gcc47-compiler
DEPENDS+=	${GCC_PKGNAME}-runtime>=${GCC_DIST_VERSION}:../../lang/gcc47-runtime

META_PACKAGE=	yes

.include "Makefile.common"

.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
