# $NetBSD: Makefile,v 1.8 2012/03/03 00:12:44 wiz Exp $
#

DISTNAME=	sound-theme-freedesktop-0.7
PKGREVISION=	3
CATEGORIES=	audio
MASTER_SITES=	http://cgit.freedesktop.org/sound-theme-freedesktop/snapshot/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.freedesktop.org/wiki/Specifications/sound-theme-spec
COMMENT=	Set of audio files for FreeDesktop

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake intltool msgfmt autoconf automake

BUILD_DEPENDS+=	gettext-m4-[0-9]*:../../devel/gettext-m4

pre-configure:
	(cd ${WRKSRC} && autoreconf -i)

BUILDLINK_DEPMETHOD.glib2=	build

.include "../../devel/glib2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
