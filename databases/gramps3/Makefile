# $NetBSD: Makefile,v 1.29 2012/06/14 07:44:04 sbd Exp $
#

DISTNAME=		gramps-3.3.2
PKGREVISION=		1
CATEGORIES=		databases
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gramps/}

MAINTAINER=		drochner@NetBSD.org
HOMEPAGE=		http://gramps-project.org/
COMMENT=		Genealogical Research and Analysis Management Programming System V3
LICENSE=		gnu-gpl-v2

DEPENDS+=		xdg-utils-[0-9]*:../../misc/xdg-utils

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		msgfmt pkg-config intltool msgconv
USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes

REPLACE_PYTHON=		src/DateHandler/_Date_fr.py
REPLACE_PYTHON+=	src/plugins/quickview/Reporef.py
REPLACE_PYTHON+=	src/plugins/rel/rel_fr.py

# pkgsrc registers mime files using mimedb.mk (see below)
CONFIGURE_ARGS+=	--enable-packager-mode

.include "options.mk"

.include "../../databases/py-bsddb3/buildlink3.mk"
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../graphics/gnome-icon-theme/buildlink3.mk"
.include "../../lang/python/application.mk"
BUILDLINK_API_DEPENDS.pygtk2+=	${PYPKGPREFIX}-gtk2>=2.10
.include "../../x11/py-gtk2/buildlink3.mk"
.include "../../x11/py-gnome2/buildlink3.mk"
.include "../../databases/shared-mime-info/mimedb.mk"
.include "../../textproc/gnome-doc-utils/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
