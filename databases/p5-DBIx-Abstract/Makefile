# $NetBSD: Makefile,v 1.9 2012/02/25 05:20:20 obache Exp $
#

DISTNAME=	DBIx-Abstract-1.01
PKGNAME=	p5-${DISTNAME}00
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBIx/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/DBIx-Abstract/
COMMENT=	SQL Database access functions
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Check-ISA-[0-9]*:../../devel/p5-Check-ISA
DEPENDS+=	p5-DBI-[0-9]*:../../databases/p5-DBI

BUILD_DEPENDS+=	p5-DBD-SQLite-[0-9]*:../../databases/p5-DBD-SQLite

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/DBIx/Abstract/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
