# $NetBSD: options.mk,v 1.2 2012/10/31 22:48:54 wiz Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.yabause
PKG_SUPPORTED_OPTIONS=	openal
PKG_OPTIONS_OPTIONAL_GROUPS=	GUI
PKG_OPTIONS_GROUP.GUI=		gtk qt

PKG_SUGGESTED_OPTIONS=	qt

.include "../../mk/bsd.options.mk"

#.if !empty(PKG_OPTIONS:Mdoxygen)
#BUILD_DEPENDS+=	doxygen>=1.6.3:../../devel/doxygen
#.endif

.if !empty(PKG_OPTIONS:Mqt)
CONFIGURE_ENV+=	YAB_PORTS=qt
CMAKE_ARGS+=	-DYAB_PORTS=qt
.include "../../x11/qt4-tools/buildlink3.mk"
.elif !empty(PKG_OPTIONS:Mgtk)
CONFIGURE_ENV+=	YAB_PORTS=gtk
CMAKE_ARGS+=	-DYAB_PORTS=gtk
CMAKE_ARGS+=	-DGTK2_GDKCONFIG_INCLUDE_DIR:PATH=${BUILDLINK_PREFIX.gtk2}/lib/gtk-2.0/include
CMAKE_ARGS+=	-DGTK2_GLIB_INCLUDE_DIR:PATH=${BUILDLINK_PREFIX.glib2}/include/glib/glib-2.0
CMAKE_ARGS+=	-DGTK2_GLIBCONFIG_INCLUDE_DIR:PATH=${BUILDLINK_PREFIX.glib2}/lib/glib-2.0/include
BUILDLINK_API_DEPENDS.gtkglext+=        gtkglext>=1.2.0nb4
.include "../../graphics/gtkglext/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mopenal)
.include "../../audio/openal/buildlink3.mk"
.endif
