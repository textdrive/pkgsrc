# $NetBSD: Makefile,v 1.14 2010/02/26 10:28:34 wiz Exp $

DISTNAME=	nologinmsg-1.0
PKGREVISION=	2
CATEGORIES=	shells sysutils
MASTER_SITES=	${MASTER_SITE_LOCAL}

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=
COMMENT=	More functional native binary replacement for /sbin/nologin

PKG_DESTDIR_SUPPORT=	user-destdir

USE_FEATURES=	getprogname

SUBST_CLASSES+=		nlm
SUBST_STAGE.nlm=	pre-configure
SUBST_FILES.nlm=	nologinmsg.8 pathnames.h
SUBST_SED.nlm=		-e 's|/usr/local/etc|${PKG_SYSCONFDIR}|g'

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man8

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} ${CPPFLAGS} -I. ${LDFLAGS}	\
		-o nologinmsg nologinmsg.c ${LIBS}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nologinmsg ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nologinmsg.8 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man8

.include "../../devel/sysexits/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
