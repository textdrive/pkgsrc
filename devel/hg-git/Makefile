# $NetBSD: Makefile,v 1.11 2012/03/15 11:53:24 obache Exp $
#

DISTNAME=		hg-git-0.3.2
PKGREVISION=		1
EGG_NAME=		hg_git-0.3.2
CATEGORIES=		devel python
MASTER_SITES=		${MASTER_SITE_LOCAL}

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://hg-git.github.com
COMMENT=		Git plugin for Mercurial

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	${PYPKGPREFIX}-dulwich>=0.8.0:../../devel/py-dulwich
DEPENDS+=	mercurial>=1.7.0:../../devel/mercurial

USE_LANGUAGES=	#none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
