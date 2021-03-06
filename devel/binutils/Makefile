# $NetBSD: Makefile,v 1.42 2012/06/02 11:54:38 cheusov Exp $

DISTNAME=	binutils-2.17
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=binutils/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://directory.fsf.org/project/binutils/
COMMENT=	GNU binary utilities
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS=	avr-binutils<2.13.2.1nb1

NOT_FOR_PLATFORM=	Darwin-*-* Interix-*-*

USE_PKGLOCALEDIR=	yes
REPLACE_LOCALEDIR_PATTERNS+=	Make-in

USE_TOOLS+=		makeinfo
TEXINFO_REQD=		4.0
MAKEFLAGS+=		TEXINFO_LOCALE=no

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-lib-path='/lib:/usr/lib'
CONFIGURE_ARGS+=	--disable-werror # pkg/45541
CONFIGURE_ARGS+=	--program-prefix=g
BINUTILS_PREFIX=	${PREFIX}/${MACHINE_GNU_PLATFORM}

PLIST_SRC=	${PKGDIR}/PLIST.common
PLIST_SRC+=	${WRKDIR}/PLIST_DYNAMIC

INFO_FILES=	yes

INSTALLATION_DIRS=	gnu/bin gnu/man/man1

# gprof (XXX: and others?) cannot be built on all platforms
#
PLIST_VARS+=	gprof
.include "../../mk/bsd.prefs.mk"
.if ${OPSYS} != "IRIX"
PLIST.gprof=	yes
.endif

.include "../../mk/compiler.mk"
.if !empty(PKGSRC_COMPILER:Mclang)
CFLAGS+=	-Wno-unused-value -Wno-format-security \
		-Wno-uninitialized -Wno-format
.endif

# Prevent the need to run texi2pod.pl and pod2man hence
# the need for perl as build dependency.
#
post-configure:
.for f in ld/ldver.texi ld/ld.1 gas/doc/gasver.texi gas/doc/as.1
	set -e; \
	if [ -f ${WRKSRC}/${f} ]; then					\
		touch ${WRKSRC}/${f};					\
	fi
.endfor

post-install:
	cd ${DESTDIR}${PREFIX} && find ${MACHINE_GNU_PLATFORM}/lib/ldscripts -type f -print	\
		| sort -r						\
		> ${WRKDIR}/PLIST_DYNAMIC
.for f in addr2line ar as c++filt dlltool gprof ld nlmconv nm objcopy objdump ranlib \
          readelf size strings strip windres
	set -e; \
	if ${TEST} -f ${DESTDIR}${PREFIX}/bin/g${f:Q}; then \
	   ${LN} -sf ${PREFIX}/bin/g${f} ${DESTDIR}${PREFIX}/gnu/bin/${f}; \
	fi
	if ${TEST} -f ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/g${f:Q}.1; then \
	   ${LN} -sf ${PREFIX}/${PKGMANDIR}/man1/g${f}.1 ${DESTDIR}${PREFIX}/gnu/man/man1/${f}.1; \
	fi
.endfor

.include "../../mk/bsd.pkg.mk"
