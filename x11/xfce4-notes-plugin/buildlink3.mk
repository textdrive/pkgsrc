# $NetBSD: buildlink3.mk,v 1.33 2012/10/02 17:12:23 tron Exp $

BUILDLINK_TREE+=	xfce4-notes-plugin

.if !defined(XFCE4_NOTES_PLUGIN_BUILDLINK3_MK)
XFCE4_NOTES_PLUGIN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xfce4-notes-plugin+=	xfce4-notes-plugin>=1.6.0
BUILDLINK_ABI_DEPENDS.xfce4-notes-plugin+=	xfce4-notes-plugin>=1.6.0nb13
BUILDLINK_PKGSRCDIR.xfce4-notes-plugin?=	../../x11/xfce4-notes-plugin

.include "../../x11/xfce4-panel/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.endif # XFCE4_NOTES_PLUGIN_BUILDLINK3_MK

BUILDLINK_TREE+=	-xfce4-notes-plugin
