# $NetBSD: Makefile,v 1.1.1.1 2011/10/05 22:10:56 ryoon Exp $
#

DISTNAME=	chemical-mime-data-0.1.94
CATEGORIES=	biology
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=chemical-mime/}

MAINTAINER=	kamel.derouiche@gmail.com
HOMEPAGE=	http://chemical-mime.sourceforge.net/
COMMENT=	Chemical mime and file type support for desktops
LICENSE=	gnu-lgpl-v2.1 # or later

PKG_DESTDIR_SUPPORT=	user-destdir

BUILD_DEPENDS+=		ImageMagick-[0-9]*:../../graphics/ImageMagick
BUILD_DEPENDS+=		libxslt-[0-9]*:../../textproc/libxslt

GNU_CONFIGURE=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		pkg-config intltool msgfmt gmake

PKGCONFIG_OVERRIDE+=	chemical-mime-data.pc.in

.include "../../databases/gnome-mime-data/buildlink3.mk"
.include "../../databases/shared-mime-info/mimedb.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
