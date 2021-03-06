# $NetBSD: Makefile,v 1.56 2012/06/04 17:40:43 drochner Exp $

DISTNAME=	stellarium-0.11.2
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=stellarium/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.stellarium.org/
COMMENT=	Generate photorealistic skies with OpenGL

PKG_DESTDIR_SUPPORT=	user-destdir

USE_CMAKE=		yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		msgfmt perl pod2man

CMAKE_ARGS+= -D FreeType2_INCLUDE_DIR:PATH=${BUILDLINK_PREFIX.freetype2}/include/freetype2
CMAKE_ARGS+= -D FreeType2_LIBRARIES:PATH=${BUILDLINK_PREFIX.freetype2}/lib
CMAKE_ARGS+= -D SDLMIXER_INCLUDE_DIR:PATH=${BUILDLINK_PREFIX.SDL}/include/SDL

SUBST_CLASSES+=		mac
SUBST_MESSAGE.mac=	Disabling Mac OS X paths.
SUBST_FILES.mac=	src/core/StelFileMgr.cpp
SUBST_STAGE.mac=	pre-configure
SUBST_SED.mac=		-e 's,Q_OS_MAC,Q_XX_MAC,'

.include "../../mk/bsd.prefs.mk"
.if !empty(MACHINE_PLATFORM:MNetBSD-5*)
BUILDLINK_TRANSFORM+=	rm:-Wno-unused-but-set-parameter
BUILDLINK_TRANSFORM+=	rm:-Wno-unused-but-set-variable
.endif

.include "../../devel/boost-headers/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
