# $NetBSD: Makefile,v 1.3.2.1 2012/08/12 13:31:22 tron Exp $

DISTNAME=	suse_libxml2-${SUSE_VERSION}
PKGREVISION=	3
CATEGORIES=	emulators
RPMUPDPKGS+=	libxml2-2.7.8+git20110708-3.11.1.${SUSE_ARCH}

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Linux compatibility package for libxml2

EMUL_MODULES.linux=	base

.include "../../emulators/suse121_linux/Makefile.common"
.include "../../mk/bsd.pkg.mk"
