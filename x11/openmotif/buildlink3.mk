# $NetBSD: buildlink3.mk,v 1.23 2012/10/23 10:24:20 wiz Exp $

BUILDLINK_TREE+=	openmotif

.if !defined(OPENMOTIF_BUILDLINK3_MK)
OPENMOTIF_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.openmotif+=	openmotif>=2.3.1
BUILDLINK_ABI_DEPENDS.openmotif+=	openmotif>=2.3.1nb6
BUILDLINK_PKGSRCDIR.openmotif?=	../../x11/openmotif

_MOTIFBASE=	${BUILDLINK_PREFIX.openmotif}
MOTIFLIB=	${COMPILER_RPATH_FLAG}${_MOTIFBASE}/lib \
		-L${_MOTIFBASE}/lib -lXm

BUILDLINK_TRANSFORM+=	rm:-lXp

.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXaw/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/xbitmaps/buildlink3.mk"
.endif # OPENMOTIF_BUILDLINK3_MK

BUILDLINK_TREE+=	-openmotif
