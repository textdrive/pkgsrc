# $NetBSD: buildlink3.mk,v 1.23 2012/09/22 13:48:21 ryoon Exp $

BUILDLINK_TREE+=	nucleo

.if !defined(NUCLEO_BUILDLINK3_MK)
NUCLEO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.nucleo+=	nucleo>=0.6
BUILDLINK_ABI_DEPENDS.nucleo+=	nucleo>=0.7.5nb18
BUILDLINK_PKGSRCDIR.nucleo?=	../../x11/nucleo
pkgbase:=nucleo
.  include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.nucleo:Mgnutls)
.  include "../../security/gnutls/buildlink3.mk"
.endif

#.if !empty(PKG_BUILD_OPTIONS.nucleo:Mqt4)
#.  include "../../x11/qt4-libs/buildlink3.mk"
#.endif

.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/gd/buildlink3.mk"
.include "../../graphics/glu/buildlink3.mk"
.include "../../graphics/libexif/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../multimedia/ffmpeg/buildlink3.mk"
.include "../../net/mDNSResponder/buildlink3.mk"

.include "../../mk/pthread.buildlink3.mk"
.endif # NUCLEO_BUILDLINK3_MK

BUILDLINK_TREE+=	-nucleo
