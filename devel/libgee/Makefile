# $NetBSD: Makefile,v 1.13 2012/03/03 00:11:57 wiz Exp $
#

DISTNAME=	libgee-0.6.4
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libgee/0.6/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://live.gnome.org/Libgee
COMMENT=	Library providing GObject-based interfaces and classes
LICENSE=	gnu-lgpl-v2.1

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=		pkg-config gmake

# to regenerate after patches
#BUILD_DEPENDS+=	vala-[0-9]*:../../lang/vala

PKGCONFIG_OVERRIDE+=	gee-1.0.pc.in

TEST_TARGET=	check

.include "../../devel/glib2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
