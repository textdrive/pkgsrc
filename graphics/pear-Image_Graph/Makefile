# $NetBSD: Makefile,v 1.10 2010/12/22 15:38:32 taca Exp $

DISTNAME=	Image_Graph-0.8.0
CATEGORIES=	graphics

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://pear.php.net/package/Image_Graph/
COMMENT=	Package for displaying (numerical) data as a graph/chart/plot

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS=	php-pear-Image_Graph-[0-9]*

DEPENDS+=	${PHP_PKG_PREFIX}-pear-Image_Canvas>=0.3.0:../../graphics/pear-Image_Canvas
DEPENDS+=	${PHP_PKG_PREFIX}-pear-Numbers_Roman-[0-9]*:../../math/pear-Numbers_Roman
DEPENDS+=	${PHP_PKG_PREFIX}-pear-Numbers_Words-[0-9]*:../../math/pear-Numbers_Words

.include "../../lang/php/pear.mk"
.include "../../mk/bsd.pkg.mk"
