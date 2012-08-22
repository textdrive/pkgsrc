# $NetBSD$

BUILDLINK_TREE+=	gcc47-runtime

.if !defined(GCC47_RUNTIME_BUILDLINK3_MK)
GCC47_RUNTIME_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gcc47-runtime+=	gcc47-runtime>=${_GCC_REQD}
BUILDLINK_ABI_DEPENDS.gcc47-runtime+=	gcc47-runtime>=4.7.0
BUILDLINK_PKGSRCDIR.gcc47-runtime?=	../../lang/gcc47-runtime

BUILDLINK_PASSTHRU_DIRS+=	${BUILDLINK_PREFIX.gcc47-runtime}/gcc47

# Packages that link against shared libraries need a full dependency.
BUILDLINK_DEPMETHOD.gcc47-runtime?=	full

# Use custom specs file to ensure we link against pkgsrc libraries.
SPECS_LIBGCC=		${WRAPPER_DIR}/specs.libgcc
WRAPPER_TARGETS+=	${SPECS_LIBGCC}

${SPECS_LIBGCC}:
	@${ECHO} "*link_libgcc:" >${SPECS_LIBGCC}
	@${ECHO} "%D -R${PREFIX}/gcc47/lib/%M" >>${SPECS_LIBGCC}

_WRAP_EXTRA_ARGS.CC+=	-specs ${SPECS_LIBGCC}
_WRAP_EXTRA_ARGS.CXX+=	-specs ${SPECS_LIBGCC}

pkgbase := gcc47-runtime
.include "../../mk/pkg-build-options.mk"
.if !empty(PKG_BUILD_OPTIONS.gcc47:Mgcc-java) || \
    !empty(PKG_BUILD_OPTIONS.gcc47:Mgcc-go)
.include "../../mk/pthread.buildlink3.mk"
.endif
.if !empty(PKG_BUILD_OPTIONS.gcc47:Mgcc-java)
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/dlopen.buildlink3.mk"
.endif

.endif # GCC47_RUNTIME_BUILDLINK3_MK
BUILDLINK_TREE+=	-gcc47-runtime
