# $NetBSD: Makefile,v 1.50 2012/06/23 19:47:07 dholland Exp $
#

DISTNAME=	xarchon-0.60
PKGREVISION=	11
CATEGORIES=	games x11
MASTER_SITES=	http://xarchon.seul.org/ \
		ftp://xarchon.seul.org/pub/xarchon/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://xarchon.seul.org/
COMMENT=	Chess-like strategy game with battle options

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	gmake
GNU_CONFIGURE=	YES
USE_LANGUAGES=	c c++

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "SunOS"
CONFIGURE_ENV+=	CC=${CC:Q}
.endif

LDFLAGS.DragonFly=	-lX11
LIBS.SunOS+=		-lX11 -lsocket -lnsl

.include "../../audio/esound/buildlink3.mk"
.include "../../x11/libXpm/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/qt3-libs/buildlink3.mk"
.include "../../graphics/glu/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
