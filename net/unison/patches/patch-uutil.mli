$NetBSD: patch-uutil.mli,v 1.1 2012/10/13 09:05:12 wiz Exp $

r511 | vouillon | 2012-09-17 16:09:03 +0200 (Mon, 17 Sep 2012) | 3 lines

* Use hash function from OCaml 3.x for comparing archives, even when
  compiled with OCaml 4.x

--- uutil.mli.orig	2010-04-15 17:29:31.000000000 +0000
+++ uutil.mli
@@ -13,6 +13,8 @@ val myNameAndVersion : string
 
 (* Hashing *)
 val hash2 : int -> int -> int
+(* Hash function (OCaml 3.x version) *)
+val hash : 'a -> int
 
 module type FILESIZE = sig
   type t
