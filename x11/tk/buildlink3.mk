# $NetBSD: buildlink3.mk,v 1.27 2012/08/21 21:32:34 marino Exp $

BUILDLINK_TREE+=	tk

.if !defined(TK_BUILDLINK3_MK)
TK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.tk+=	tk>=8.5.7
BUILDLINK_ABI_DEPENDS.tk+=	tk>=8.5.7
BUILDLINK_PKGSRCDIR.tk?=	../../x11/tk

BUILDLINK_FILES.tk+=	bin/wish*
#
# Make "-ltk" and "-ltk8.5" resolve into "-ltk85", so that we don't
# need to patch so many Makefiles.
#
BUILDLINK_TRANSFORM+=	l:tk:tk85
BUILDLINK_TRANSFORM+=	l:tk8.5:tk85

TKCONFIG_SH?=	${BUILDLINK_PREFIX.tk}/lib${LIBARCHSUFFIX}/tkConfig.sh

_TOOLS_USE_PKGSRC.wish=	yes

FIND_PREFIX:=		TOOLS_PREFIX.wish=tk
.include "../../mk/find-prefix.mk"
WISH=			${TOOLS_PREFIX.wish}/bin/wish

.include "../../lang/tcl/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.endif # TK_BUILDLINK3_MK

BUILDLINK_TREE+=	-tk
