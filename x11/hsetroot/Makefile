# $NetBSD: Makefile,v 1.16 2012/02/06 12:42:03 wiz Exp $
#

DISTNAME=	hsetroot-1.0.2
PKGREVISION=	9
CATEGORIES=	x11
MASTER_SITES=	http://thegraveyard.org/files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://thegraveyard.org/hsetroot.php
COMMENT=	Allows you to compose wallpapers for X

PKG_DESTDIR_SUPPORT=	user-destdir

MAKE_JOBS_SAFE=		no

GNU_CONFIGURE=	yes

.include "../../graphics/imlib2/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
