# $NetBSD: Makefile,v 1.16.2.1 2012/07/23 18:24:35 tron Exp $

MODNAME=		wddx
CATEGORIES+=		textproc
COMMENT=		PHP extension for WDDX support

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS=	php-wddx-[0-9]*

CONFIGURE_ARGS+=	--enable-${MODNAME}=shared,${BUILDLINK_DIR}
CONFIGURE_ARGS+=	--with-libxml-dir=${BUILDLINK_DIR}

USE_PHP_EXT_PATCHES=	# defined

# appease some PHP build assumpsions
CFLAGS+=	-I${BUILDLINK_DIR}/include/libxml2 \
		-I${BUILDLINK_DIR}/include/php/ext/date/lib

.include "../../lang/php/phpversion.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../lang/php/ext.mk"
.include "../../mk/bsd.pkg.mk"
