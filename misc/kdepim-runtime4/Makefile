# $NetBSD: Makefile,v 1.27 2012/06/14 22:09:29 sbd Exp $

#DISTNAME=	kdepim-runtime-${_KDE_VERSION}
DISTNAME=	kdepim-runtime-4.4.11.1
PKGNAME=	${DISTNAME:S/-4/4-4/}
MASTER_SITES=	${MASTER_SITE_KDE:=kdepim-4.4.11.1/src/}
PKGREVISION=	2
CATEGORIES=	misc
COMMENT=	Runtime requirements for the KDE PIM tools
EXTRACT_SUFX=	.tar.bz2

.include "../../meta-pkgs/kde4/Makefile.kde4"

# tar: Invalid header, starting valid header search.
EXTRACT_USING=	gtar

# BUILD_MAKE_FLAGS+= VERBOSE=1

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../misc/kdepimlibs4/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
