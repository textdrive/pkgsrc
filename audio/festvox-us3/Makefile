# $NetBSD: Makefile,v 1.21 2009/05/19 08:59:03 wiz Exp $

DISTNAME=	festvox_us3
PKGNAME=	festvox-us3-1.4.0
PKGREVISION=	2
CATEGORIES=	audio
MASTER_SITES=	http://www.speech.cs.cmu.edu/festival/cstr/festival/1.4.1/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.cstr.ed.ac.uk/projects/festival/
COMMENT=	MBROLA based American English male voice for festival
LICENSE=	no-commercial-use

DEPENDS+=	festival>=1.4.0:../../audio/festival
DEPENDS+=	festlex-poslex>=1.4.0:../../audio/festlex-poslex
DEPENDS+=	festlex-cmu>=1.4.0:../../audio/festlex-cmu
DEPENDS+=	mbrola-301h{,nb[0-9]*}:../../audio/mbrola
DEPENDS+=	mbrolavox-us3-990208{,nb[0-9]*}:../../audio/mbrolavox-us3

USE_TOOLS+=	pax

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/festival
NO_BUILD=	yes

FHOME=		${PREFIX}/share/festival
MBROLA=		${FHOME}/lib/voices/english/us3_mbrola

post-extract:
	${CHMOD} -R a+r ${WRKSRC}
	${FIND} ${WRKSRC} -type d -print | ${XARGS} ${CHMOD} 755

do-install:
	cd ${WRKSRC} && pax -rw * ${DESTDIR}${FHOME}
#ugh
	${LN} -fs ../../../../../mbrola/voices/us3 ${DESTDIR}${MBROLA}
	${LN} -fs ../../../../../mbrola/voices/us3/us3mrpa ${DESTDIR}${MBROLA}

.include "../../mk/bsd.pkg.mk"
