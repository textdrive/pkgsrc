# $NetBSD: Makefile,v 1.9 2012/06/15 23:06:06 dholland Exp $
#

DISTNAME=	xf86-video-nsc-2.8.3
PKGREVISION=	1
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_XORG:=driver/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	http://xorg.freedesktop.org/
COMMENT=	Modular Xorg NSC Geode video driver

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes
USE_TOOLS+=	autoconf autoheader automake autoreconf pkg-config

BUILD_DEPENDS+=	xorg-util-macros>=1.2.0:../../devel/xorg-util-macros

post-extract:
	cp ${FILESDIR}/assyntax.h ${WRKSRC}/src/

pre-configure:
	cd ${WRKSRC} && autoreconf -vif

.include "../../x11/modular-xorg-server/buildlink3.mk"
.include "../../x11/randrproto/buildlink3.mk"
.include "../../x11/renderproto/buildlink3.mk"
.include "../../x11/videoproto/buildlink3.mk"
BUILDLINK_DEPMETHOD.libXext?=	build
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/xf86dgaproto/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
