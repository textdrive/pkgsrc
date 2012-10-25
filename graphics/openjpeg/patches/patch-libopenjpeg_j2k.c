$NetBSD: patch-libopenjpeg_j2k.c,v 1.2 2012/10/25 11:33:41 drochner Exp $

CVE-2012-3358:
A heap-based buffer overflow was found in the way OpenJPEG, an
open-source JPEG 2000 codec written in C language, performed parsing of
JPEG2000 having certain number of tiles and tilesizes. A remote
attacker could provide a specially crafted JPEG 2000 file, which when
opened in an application linked against openjpeg would lead to that
application crash, or, potentially arbitrary code execution with the
privileges of the user running the application.

http://code.google.com/p/openjpeg/source/detail?r=1727

--- libopenjpeg/j2k.c.orig	2012-02-07 10:49:55.000000000 +0000
+++ libopenjpeg/j2k.c
@@ -684,6 +684,12 @@ static void j2k_read_cox(opj_j2k_t *j2k,
 					"of resolutions of this component\nModify the cp_reduce parameter.\n\n", compno);
 		j2k->state |= J2K_STATE_ERR;
 	}
+  if( tccp->numresolutions > J2K_MAXRLVLS ) {
+    opj_event_msg(j2k->cinfo, EVT_ERROR, "Error decoding component %d.\nThe number of resolutions is too big: %d vs max= %d. Truncating.\n\n",
+      compno, tccp->numresolutions, J2K_MAXRLVLS);
+		j2k->state |= J2K_STATE_ERR;
+    tccp->numresolutions = J2K_MAXRLVLS;
+  }
 
 	tccp->cblkw = cio_read(cio, 1) + 2;	/* SPcox (E) */
 	tccp->cblkh = cio_read(cio, 1) + 2;	/* SPcox (F) */
@@ -1269,7 +1275,7 @@ static void j2k_read_sot(opj_j2k_t *j2k)
 		static int backup_tileno = 0;
 
 		/* tileno is negative or larger than the number of tiles!!! */
-		if ((tileno < 0) || (tileno > (cp->tw * cp->th))) {
+		if ((tileno < 0) || (tileno >= (cp->tw * cp->th))) {
 			opj_event_msg(j2k->cinfo, EVT_ERROR,
 				"JPWL: bad tile number (%d out of a maximum of %d)\n",
 				tileno, (cp->tw * cp->th));
@@ -1286,8 +1292,18 @@ static void j2k_read_sot(opj_j2k_t *j2k)
 
 		/* keep your private count of tiles */
 		backup_tileno++;
-	};
+	}
+  else
 #endif /* USE_JPWL */
+  {
+    /* tileno is negative or larger than the number of tiles!!! */
+    if ((tileno < 0) || (tileno >= (cp->tw * cp->th))) {
+      opj_event_msg(j2k->cinfo, EVT_ERROR,
+        "JPWL: bad tile number (%d out of a maximum of %d)\n",
+        tileno, (cp->tw * cp->th));
+      return;
+    }
+  }
 	
 	if (cp->tileno_size == 0) {
 		cp->tileno[cp->tileno_size] = tileno;
@@ -1325,8 +1341,18 @@ static void j2k_read_sot(opj_j2k_t *j2k)
 				totlen);
 		}
 
-	};
+	}
+  else
 #endif /* USE_JPWL */
+  {
+    /* totlen is negative or larger than the bytes left!!! */
+    if ((totlen < 0) || (totlen > (cio_numbytesleft(cio) + 8))) {
+      opj_event_msg(j2k->cinfo, EVT_ERROR,
+        "JPWL: bad tile byte size (%d bytes against %d bytes left)\n",
+        totlen, cio_numbytesleft(cio) + 8);
+      return;
+    }
+  }
 
 	if (!totlen)
 		totlen = cio_numbytesleft(cio) + 8;
