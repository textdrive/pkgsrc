# $NetBSD: Makefile,v 1.23 2010/07/10 11:26:32 obache Exp $

DISTNAME=	phylip-3.69
CATEGORIES=	biology
MASTER_SITES=	ftp://evolution.genetics.washington.edu/pub/phylip/

MAINTAINER=	babafou@babafou.eu.org
HOMEPAGE=	http://evolution.genetics.washington.edu/phylip.html
COMMENT=	Phylogeny Inference Package
LICENSE=		phylip-license

RESTRICTED=		Distribution permitted only if no fee is charged.
NO_SRC_ON_CDROM=	${RESTRICTED}
NO_BIN_ON_CDROM=	${RESTRICTED}

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/${DISTNAME}/src

INSTALLATION_DIRS=	bin share/fonts/phylip share/doc/phylip

do-install:
.for prog in clique consense contml contrast dnacomp dnadist		\
		dnainvar dnaml dnamlk dnamove dnapars dnapenny		\
		dolmove dollop dolpenny factor fitch gendist kitsch	\
		mix move neighbor pars penny proml promlk protdist	\
		protpars restdist restml retree seqboot treedist	\
		drawgram drawtree
	${INSTALL_PROGRAM} ${WRKSRC}/${prog} ${DESTDIR}${PREFIX}/bin
.endfor
.for font in font1 font2 font3 font4 font5 font6
	${INSTALL_DATA} ${WRKSRC}/${font} ${DESTDIR}${PREFIX}/share/fonts/phylip
.endfor
.for html in clique.html consense.html contchar.html contml.html	\
		contrast.html discrete.html distance.html dnacomp.html	\
		dnadist.html dnainvar.html dnaml.html dnamlk.html	\
		dnamove.html dnapars.html dnapenny.html dollop.html	\
		dolmove.html dolpenny.html draw.html drawgram.html	\
		drawtree.html factor.html fitch.html gendist.html	\
		kitsch.html main.html mix.html move.html neighbor.html	\
		pars.html penny.html phylip.gif proml.html		\
		promlk.html protdist.html protpars.html restdist.html	\
		restml.html retree.html seqboot.html sequence.html	\
		treedist.html
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/doc/${html}		\
		${DESTDIR}${PREFIX}/share/doc/phylip
.endfor

MAKE_ENV+=	X11_LDFLAGS=${X11_LDFLAGS:Q}

.include "../../x11/libXaw/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
