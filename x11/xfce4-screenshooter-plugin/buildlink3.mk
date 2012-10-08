# $NetBSD: buildlink3.mk,v 1.17 2012/10/02 17:12:23 tron Exp $

BUILDLINK_TREE+=	xfce4-screenshooter-plugin

.if !defined(XFCE4_SCREENSHOOTER_PLUGIN_BUILDLINK3_MK)
XFCE4_SCREENSHOOTER_PLUGIN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xfce4-screenshooter-plugin+=	xfce4-screenshooter-plugin>=1.0.0
BUILDLINK_ABI_DEPENDS.xfce4-screenshooter-plugin+=	xfce4-screenshooter-plugin>=1.0.0nb13
BUILDLINK_PKGSRCDIR.xfce4-screenshooter-plugin?=	../../x11/xfce4-screenshooter-plugin

.include "../../x11/xfce4-panel/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.endif # XFCE4_SCREENSHOOTER_PLUGIN_BUILDLINK3_MK

BUILDLINK_TREE+=	-xfce4-screenshooter-plugin
