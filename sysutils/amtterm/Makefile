# $NetBSD: Makefile,v 1.4 2012/03/03 12:54:21 wiz Exp $
#

DISTNAME=		amtterm-1.2
PKGREVISION=		3
CATEGORIES=		sysutils
MASTER_SITES=		http://www.kraxel.org/releases/amtterm/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		# empty
COMMENT=		Active Management Technology (AMT) tools
LICENSE=		gnu-gpl-v2

DEPENDS+=		p5-SOAP-Lite-[0-9]*:../../net/p5-SOAP-Lite

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		gmake pkg-config perl:run

MAKE_FILE=		GNUmakefile
MAKE_FLAGS+=		prefix=${PREFIX}

REPLACE_PERL+=		amttool

.include "options.mk"

.include "../../mk/bsd.pkg.mk"
