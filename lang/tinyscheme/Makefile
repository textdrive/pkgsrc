# $NetBSD: Makefile,v 1.15 2011/12/06 13:22:17 cheusov Exp $

DISTNAME=	tinyscheme-1.40
CATEGORIES=	lang
MASTER_SITES=	$(MASTER_SITE_SOURCEFORGE:=tinyscheme/)

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://tinyscheme.sourceforge.net/home.html
COMMENT=	R5RS small embeddable scheme implementation
LICENSE=	modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=	yes

MAKE_FILE=	makefile

INSTALLATION_DIRS=	bin include lib share/tinyscheme

MAKE_FLAGS+=		SYS_LIBS=-lm\ ${BUILDLINK_LDADD.dl:Q}
MAKE_FLAGS+=		CC=${CC:Q} LDFLAGS=${LDFLAGS:Q} DEBUG=
MAKE_FLAGS+=		LD=${CC:Q}

.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
