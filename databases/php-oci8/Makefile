# $NetBSD: Makefile,v 1.2 2010/06/27 20:38:04 joerg Exp $

MODNAME=		oci8
CATEGORIES+=		databases
COMMENT=		PHP extension for Oracle 8 (and above) databases

PKG_DESTDIR_SUPPORT=	user-destdir

USE_PHP_EXT_PATCHES=	yes

.include "../../mk/bsd.prefs.mk"

.include "../../lang/php/ext.mk"

.if !defined(ORACLE_HOME)
# Joyent hack, user needs to fetch Instant Client themselves
BUILDLINK_DEPMETHOD.instantclient=	build
.include "../../joyent/instantclient/buildlink3.mk"
CONFIGURE_ARGS+=		--with-${MODNAME}=instantclient,${BUILDLINK_PREFIX.instantclient}/${ORACLE_IC_HOME}
MESSAGE_SRC+=			${.CURDIR}/../../joyent/instantclient/MESSAGE.instantclient
.elif !exists(${ORACLE_HOME})
PKG_FAIL_REASON+=		"The location of ORACLE_HOME does not exist"
.else
BUILDLINK_PASSTHRU_DIRS+=       ${ORACLE_HOME}
CONFIGURE_ARGS+=		--with-${MODNAME}=shared,${ORACLE_HOME}
.endif

.include "../../mk/bsd.pkg.mk"
