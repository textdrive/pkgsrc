$NetBSD: patch-mozilla_config_baseconfig.mk,v 1.1 2012/10/12 18:29:39 ryoon Exp $

--- mozilla/config/baseconfig.mk.orig	2012-10-05 14:45:14.000000000 +0000
+++ mozilla/config/baseconfig.mk
@@ -1,9 +1,9 @@
 INCLUDED_AUTOCONF_MK = 1
 
-includedir := $(includedir)/$(MOZ_APP_NAME)-$(MOZ_APP_VERSION)
-idldir = $(datadir)/idl/$(MOZ_APP_NAME)-$(MOZ_APP_VERSION)
-installdir = $(libdir)/$(MOZ_APP_NAME)-$(MOZ_APP_VERSION)
-sdkdir = $(libdir)/$(MOZ_APP_NAME)-devel-$(MOZ_APP_VERSION)
+includedir := $(includedir)/$(MOZILLA_PKG_NAME)
+idldir = $(datadir)/idl/$(MOZILLA_PKG_NAME)
+installdir = $(libdir)/$(MOZILLA_PKG_NAME)
+sdkdir = $(libdir)/$(MOZILLA_PKG_NAME)-sdk
 DIST = $(DEPTH)/dist
 
 # We do magic with OBJ_SUFFIX in config.mk, the following ensures we don't
