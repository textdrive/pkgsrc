# $NetBSD: Makefile,v 1.4 2012/02/29 16:32:21 hans Exp $
#

DISTNAME=	vera++-1.1.1
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	http://www.inspirel.com/vera/files/

MAINTAINER=	jmmv@NetBSD.org
HOMEPAGE=	http://www.inspirel.com/vera/
COMMENT=	Programmable verification and analysis tool for C++

PKG_DESTDIR_SUPPORT=	user-destdir

BUILD_TARGET=	build
LICENSE=	boost-license
USE_LANGUAGES=	c++
USE_TOOLS+=	gmake pax

CXXFLAGS+=	-DVERA_ROOT=\"${PREFIX:Q}/share/vera++\"

LIBS_DIRS=	-L${BUILDLINK_PREFIX.boost-libs:Q}/lib
LIBS_DIRS+=	${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.boost-libs:Q}/lib
LIBS_DIRS+=	-L${BUILDLINK_PREFIX.tcl:Q}/lib
LIBS_DIRS+=	${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.tcl:Q}/lib

MAKE_FLAGS+=	BOOST_DIR=${BUILDLINK_PREFIX.boost-headers}/include
MAKE_FLAGS+=	COMPILER_RPATH_FLAG=${COMPILER_RPATH_FLAG}
MAKE_FLAGS+=	LIBS_DIRS="${LIBS_DIRS}"
MAKE_FLAGS+=	TCLINCLUDE_DIR=${BUILDLINK_PREFIX.tcl}/include

INSTALLATION_DIRS=	bin share/doc/vera++ share/vera++

post-extract:
	cd ${WRKSRC} && find . -type f -exec chmod -x {} \;

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vera++ ${DESTDIR}${PREFIX}/bin/vera++
	cd ${WRKSRC}/doc && pax -rw * ${DESTDIR}${PREFIX}/share/doc/vera++/
	cd ${WRKSRC} && \
	    pax -rw profiles scripts ${DESTDIR}${PREFIX}/share/vera++/

.include "../../devel/boost-headers/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../lang/tcl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
