# $NetBSD: buildlink3.mk,v 1.21 2012/10/06 08:46:40 ryoon Exp $

BUILDLINK_TREE+=	telepathy-farsight

.if !defined(TELEPATHY_FARSIGHT_BUILDLINK3_MK)
TELEPATHY_FARSIGHT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.telepathy-farsight+=	telepathy-farsight>=0.0.8
BUILDLINK_ABI_DEPENDS.telepathy-farsight+=	telepathy-farsight>=0.0.16nb12
BUILDLINK_PKGSRCDIR.telepathy-farsight?=	../../chat/telepathy-farsight

.include "../../chat/telepathy-glib/buildlink3.mk"
.include "../../multimedia/farsight2/buildlink3.mk"
.endif	# TELEPATHY_FARSIGHT_BUILDLINK3_MK

BUILDLINK_TREE+=	-telepathy-farsight
