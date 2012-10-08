# $NetBSD: buildlink3.mk,v 1.32 2012/10/08 23:01:00 adam Exp $

BUILDLINK_TREE+=	xfce4-systemload-plugin

.if !defined(XFCE4_SYSTEMLOAD_PLUGIN_BUILDLINK3_MK)
XFCE4_SYSTEMLOAD_PLUGIN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xfce4-systemload-plugin+=	xfce4-systemload-plugin>=0.4.2
BUILDLINK_ABI_DEPENDS.xfce4-systemload-plugin+=	xfce4-systemload-plugin>=0.4.2nb14
BUILDLINK_PKGSRCDIR.xfce4-systemload-plugin?=	../../sysutils/xfce4-systemload-plugin

.include "../../x11/xfce4-panel/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.endif # XFCE4_SYSTEMLOAD_PLUGIN_BUILDLINK3_MK

BUILDLINK_TREE+=	-xfce4-systemload-plugin
