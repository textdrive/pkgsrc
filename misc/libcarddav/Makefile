# $NetBSD: Makefile,v 1.4 2012/03/03 00:13:36 wiz Exp $
#

DISTNAME=	libcarddav_0.6.2-2debian2
PKGNAME=	${DISTNAME:S/_/-/:S/-2debian2/.2.2/}
PKGREVISION=	2
CATEGORIES=	misc
MASTER_SITES=	https://quickbuild.pearsoncomputing.net/~trinity/+archive/trinity-builddeps/+files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://quickbuild.pearsoncomputing.net/~trinity/+archive/trinity-builddeps/+packages?field.name_filter=libcarddav&field.status_filter=published&field.series_filter=
COMMENT=	CardDAV library
LICENSE=	gnu-gpl-v3

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/${DISTNAME:S/_/-/:C/-[0-9]debian[0-9]//}

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config
USE_LIBTOOL=	yes

FETCH_USING=	curl

.include "options.mk"

.include "../../devel/glib2/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
