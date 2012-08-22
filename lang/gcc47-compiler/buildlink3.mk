# $NetBSD: buildlink3.mk,v 1.2 2012/05/07 01:53:41 dholland Exp $

BUILDLINK_TREE+=	gcc47-compiler

.if !defined(GCC47_COMPILER_BUILDLINK3_MK)
GCC47_COMPILER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gcc47-compiler+=	gcc47-compiler>=${_GCC_REQD}
BUILDLINK_ABI_DEPENDS.gcc47-compiler+=	gcc47-compiler>=4.7.0
BUILDLINK_PKGSRCDIR.gcc47-compiler?=	../../lang/gcc47-compiler

BUILDLINK_PASSTHRU_DIRS+=	${BUILDLINK_PREFIX.gcc47-compiler}/gcc47

BUILDLINK_FILES.gcc47-compiler=		#empty
BUILDLINK_AUTO_VARS.gcc47-compiler=	no
BUILDLINK_DEPMETHOD.gcc47-compiler?=	build

pkgbase := gcc47-compiler
.include "../../mk/pkg-build-options.mk"
.if !empty(PKG_BUILD_OPTIONS.gcc47:Mgcc-java) || \
    !empty(PKG_BUILD_OPTIONS.gcc47:Mgcc-go)
.include "../../mk/pthread.buildlink3.mk"
.endif
.if !empty(PKG_BUILD_OPTIONS.gcc47:Mgcc-java)
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/dlopen.buildlink3.mk"
.endif

.endif # GCC47_COMPILER_BUILDLINK3_MK
BUILDLINK_TREE+=	-gcc47-compiler
