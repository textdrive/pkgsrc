# $NetBSD: Makefile,v 1.8 2011/04/22 13:44:54 obache Exp $
#

DISTNAME=	wmclockmon-0.8.1
PKGREVISION=	2
CATEGORIES=	time x11
MASTER_SITES=	http://tnemeth.free.fr/projets/programmes/

MAINTAINER=	poff@sixbit.org
HOMEPAGE=	http://tnemeth.free.fr/projets/dockapps.html
COMMENT=	Windowmaker dockapp for time/date

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes

.include "../../x11/gtk/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXpm/buildlink3.mk"
.include "../../x11/xextproto/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
