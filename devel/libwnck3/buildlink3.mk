# $NetBSD: buildlink3.mk,v 1.1 2012/10/18 19:21:04 prlw1 Exp $

BUILDLINK_TREE+=	libwnck3

.if !defined(LIBWNCK3_BUILDLINK3_MK)
LIBWNCK3_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libwnck3+=	libwnck>=3.2.1
BUILDLINK_ABI_DEPENDS.libwnck3?=	libwnck>=3.4.3
BUILDLINK_PKGSRCDIR.libwnck3?=	../../devel/libwnck3

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../x11/libXres/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/startup-notification/buildlink3.mk"
.endif # LIBWNCK3_BUILDLINK3_MK

BUILDLINK_TREE+=	-libwnck3
