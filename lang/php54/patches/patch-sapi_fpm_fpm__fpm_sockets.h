$NetBSD: patch-sapi_fpm_fpm__fpm_sockets.h,v 1.2 2012/08/17 15:34:01 taca Exp $

Silly bug. 'sun' is of course taken on SunOS.

--- sapi/fpm/fpm/fpm_sockets.h.orig	2012-08-15 04:26:05.000000000 +0000
+++ sapi/fpm/fpm/fpm_sockets.h
@@ -25,7 +25,7 @@
 enum fpm_address_domain fpm_sockets_domain_from_address(char *addr);
 int fpm_sockets_init_main();
 int fpm_socket_get_listening_queue(int sock, unsigned *cur_lq, unsigned *max_lq);
-int fpm_socket_unix_test_connect(struct sockaddr_un *sun, size_t socklen);
+int fpm_socket_unix_test_connect(struct sockaddr_un *sock, size_t socklen);
 
 
 static inline int fd_set_blocked(int fd, int blocked) /* {{{ */
