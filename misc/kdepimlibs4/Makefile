# $NetBSD: Makefile,v 1.32.2.1 2012/08/16 20:30:18 spz Exp $

DISTNAME=	kdepimlibs-${_KDE_VERSION}
PKGNAME=	${DISTNAME:S/-4/4-4/}
PKGREVISION=	2
CATEGORIES=	misc
COMMENT=	Support libraries for PIM for the KDE integrated X11 desktop

.include "../../meta-pkgs/kde4/Makefile.kde4"

CMAKE_DEPENDENCIES_REWRITE= _KDE_build/KDEPimLibsDependencies.cmake

REPLACE_PERL+= mailtransport/kconf_update/migrate-transports.pl

BUILDLINK_API_DEPENDS.akonadi+=  akonadi>=1.5.52

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../databases/openldap-client/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.if ${OPSYS} == "Linux"
.include "../../devel/libuuid/buildlink3.mk"
.endif
.include "../../mail/akonadi/buildlink3.mk"
.include "../../security/cyrus-sasl/buildlink3.mk"
.include "../../security/gpgme/buildlink3.mk"
.include "../../time/libical/buildlink3.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
