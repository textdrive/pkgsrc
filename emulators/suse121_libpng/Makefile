# $NetBSD: Makefile,v 1.3.2.1 2012/08/03 11:37:26 tron Exp $

DISTNAME=	suse_libpng-${SUSE_VERSION}
PKGREVISION=	3
CATEGORIES=	emulators
RPMUPDPKGS+=	libpng14-14-1.4.11-3.12.1.${SUSE_ARCH}
RPMUPDPKGS+=	libpng12-0-1.2.49-9.9.1.${SUSE_ARCH}

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Linux compatibility package for PNG

EMUL_MODULES.linux=	base

.include "../../emulators/suse121_linux/Makefile.common"
.include "../../mk/bsd.pkg.mk"
