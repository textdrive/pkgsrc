# $NetBSD: Makefile,v 1.3 2009/02/17 14:43:05 abs Exp $
#

DISTNAME=	ispell-pl-20021127
PKGNAME=	${DISTNAME:S/-pl-/-polski-/}
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ispell-pl/}

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://ispell-pl.sourceforge.net/
COMMENT=	Polish dictionary for interactive spelling checker

DEPENDS+=	ispell-base>=3.1.20:../../textproc/ispell-base

INSTALLATION_DIRS=	lib
PKG_DESTDIR_SUPPORT=	user-destdir

do-build:
	cd ${WRKSRC} && ${SH} ./zbuduj.slownik.sh

do-install:
	${INSTALL_DATA} ${WRKSRC}/polish.aff ${DESTDIR}${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/polish.hash ${DESTDIR}${PREFIX}/lib

.include "../../mk/bsd.pkg.mk"
