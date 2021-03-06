# $NetBSD: Makefile,v 1.6 2012/06/07 01:13:58 jmmv Exp $
#

DISTNAME=	kyua-cli-0.4
CATEGORIES=	devel
MASTER_SITES=	http://kyua.googlecode.com/files/

MAINTAINER=	jmmv@NetBSD.org
HOMEPAGE=	http://code.google.com/p/kyua/
COMMENT=	Kyua (automated testing framework) - Command line interface
LICENSE=	2-clause-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
INFO_FILES=		yes
MAKE_JOBS_SAFE=		yes
USE_LANGUAGES=		c++
USE_TOOLS=		makeinfo pkg-config

PKG_OPTIONS_VAR=	PKG_OPTIONS.kyua-cli
PKG_SUPPORTED_OPTIONS=	tests
PKG_SUGGESTED_OPTIONS=	tests

CONFIGURE_ARGS+=	KYUA_CONFSUBDIR=
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=	--without-doxygen

PKG_SYSCONFSUBDIR=	kyua

.include "../../mk/bsd.options.mk"

.if $(PKG_OPTIONS:Mtests)
CONFIGURE_ARGS+=	--with-atf
PLIST_SUBST+=		TESTS=
BUILDLINK_API_DEPENDS.atf+=	atf>=0.15
.  include "../../devel/atf/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--without-atf
PLIST_SUBST+=		TESTS=@comment
.endif

post-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/tests
	${INSTALL_DATA} ${WRKSRC}/examples/Kyuafile.top \
	    ${DESTDIR}${PREFIX}/tests/Kyuafile

.include "../../databases/sqlite3/buildlink3.mk"
BUILDLINK_API_DEPENDS.lutok+=	lutok>=0.2
.include "../../devel/lutok/buildlink3.mk"
.include "../../lang/lua/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
