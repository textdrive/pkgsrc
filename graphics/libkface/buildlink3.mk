# $NetBSD: buildlink3.mk,v 1.6 2012/10/08 23:01:04 adam Exp $

BUILDLINK_TREE+=	libkface

.if !defined(LIBKFACE_BUILDLINK3_MK)
LIBKFACE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libkface+=	libkface>=2.5.0
BUILDLINK_ABI_DEPENDS.libkface?=	libkface>=2.5.0nb5
BUILDLINK_PKGSRCDIR.libkface?=	../../graphics/libkface

.include "../../graphics/opencv/buildlink3.mk"
.include "../../x11/kdelibs4/buildlink3.mk"
.endif	# LIBKFACE_BUILDLINK3_MK

BUILDLINK_TREE+=	-libkface
