# $NetBSD: Makefile,v 1.10.12.1 2012/07/23 18:24:33 tron Exp $

MODNAME=		shmop
CATEGORIES+=		devel
COMMENT=		PHP extension for simple SysV shared memory operations

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS=	php-shmop-[0-9]*

CONFIGURE_ARGS+=	--enable-${MODNAME}=shared,${BUILDLINK_DIR}

.include "../../lang/php/ext.mk"
.include "../../mk/bsd.pkg.mk"
