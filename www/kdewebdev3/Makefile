# $NetBSD: Makefile,v 1.40 2012/06/14 07:44:11 sbd Exp $

DISTNAME=	kdewebdev-${_KDE_VERSION}
PKGREVISION=	13
CATEGORIES=	www
COMMENT=	HTML editor and tools suitable for experienced web developers

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../meta-pkgs/kde3/Makefile.kde3"

USE_TOOLS+=		perl
REPLACE_PERL+=		kommander/working/extractkmdr \
			quanta/scripts/TemplateMagic.pl \
			quanta/scripts/dwt.pl

SUBST_CLASSES+=		xmlpath
SUBST_STAGE.xmlpath=	post-patch
SUBST_MESSAGE.xmlpath=	Fix broken libxml2 path.
SUBST_FILES.xmlpath=	klinkstatus/src/utils/Makefile.in
SUBST_SED.xmlpath=	-e s:/usr/include/libxml2:${PREFIX}/include/libxml2:

.include "../../meta-pkgs/kde3/kde3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../x11/kdebase3/buildlink3.mk"
.include "../../x11/kdelibs3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
