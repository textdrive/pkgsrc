# $NetBSD: buildlink3.mk,v 1.18 2012/10/02 17:11:28 tron Exp $

BUILDLINK_TREE+=	claws-mail-pgpcore

.if !defined(CLAWS_MAIL_PGPCORE_BUILDLINK3_MK)
CLAWS_MAIL_PGPCORE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.claws-mail-pgpcore+=	claws-mail-pgpcore>=3.7.0
BUILDLINK_ABI_DEPENDS.claws-mail-pgpcore+=	claws-mail-pgpcore>=3.8.1nb2
BUILDLINK_PKGSRCDIR.claws-mail-pgpcore?=	../../mail/claws-mail-pgpcore

.include "../../x11/gtk2/buildlink3.mk"
.include "../../security/gpgme/buildlink3.mk"
.endif # CLAWS_MAIL_PGPCORE_BUILDLINK3_MK

BUILDLINK_TREE+=	-claws-mail-pgpcore
