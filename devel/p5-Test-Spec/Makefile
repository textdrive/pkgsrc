# $NetBSD: Makefile,v 1.1.1.1 2011/08/16 21:04:55 wiz Exp $

DISTNAME=		Test-Spec-0.38
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Test-Spec/
COMMENT=		Perl5 module for writing tests in a declarative specification style
LICENSE=		${PERL5_LICENSE}

DEPENDS+=		p5-Package-Stash>=0.23:../../devel/p5-Package-Stash
DEPENDS+=		p5-Test-Deep>=0.103:../../devel/p5-Test-Deep
DEPENDS+=		p5-Test-Trap-[0-9]*:../../devel/p5-Test-Trap
DEPENDS+=		p5-Tie-IxHash-[0-9]*:../../devel/p5-Tie-IxHash

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Test/Spec/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
