# $NetBSD: Makefile,v 1.4 2012/06/02 14:28:50 obache Exp $

DISTNAME=	Net_LDAP2-2.0.12
CATEGORIES+=	net

MAINTAINER=	wenheping@gmail.com
COMMENT=	Object oriented interface for searching and manipulating LDAP-entries
LICENSE=	gnu-lgpl-v3

DEPENDS+=      ${PHP_PKG_PREFIX}-ldap>=5.2.12:../../databases/php-ldap

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../lang/php/pear.mk"
.include "../../mk/bsd.pkg.mk"
