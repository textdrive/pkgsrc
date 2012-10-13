$NetBSD: patch-fspath.mli,v 1.1 2012/10/13 09:05:11 wiz Exp $

r511 | vouillon | 2012-09-17 16:09:03 +0200 (Mon, 17 Sep 2012) | 3 lines

* Use hash function from OCaml 3.x for comparing archives, even when
  compiled with OCaml 4.x

--- fspath.mli.orig	2010-04-15 17:29:31.000000000 +0000
+++ fspath.mli
@@ -33,5 +33,3 @@ val quotes : t -> string
 
 (* CASE-SENSITIVE comparison between fspaths *)
 val compare : t -> t -> int
-(* CASE-SENSITIVE hash of a fspath *)
-val hash : t -> int
