# $NetBSD: Makefile,v 1.22 2022/09/01 10:30:55 markd Exp $

DISTNAME=	epstopdf
PKGNAME=	tex-${DISTNAME}-2.29
TEXLIVE_REV=	64244

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://ctan.org/pkg/epstopdf
COMMENT=	Convert EPS to 'encapsulated' PDF using Ghostscript
LICENSE=	modified-bsd

CONFLICTS=	texlive-pdftools<2011

USE_TOOLS+=	gs:run perl:run

REPLACE_PERL=	bin/epstopdf

SUBST_CLASSES+=		paths
SUBST_MESSAGE.paths=	Setting paths to commands.
SUBST_STAGE.paths=	pre-configure
SUBST_FILES.paths=	bin/epstopdf
SUBST_SED.paths+=	-e 's,@GHOSTSCRIPT@,${TOOLS_PATH.gs},g'
SUBST_SED.paths+=	-e 's,@KPSEWHICH@,${LOCALBASE}/bin/kpsewhich,g'

INSTALLATION_DIRS=	bin
TEX_TEXMF_DIRS=		# empty

.include "../../print/texlive/package.mk"

post-extract:
	${MKDIR} ${WRKSRC}/bin
	${MV} ${WRKSRC}/texmf-dist/scripts/epstopdf/epstopdf.pl \
		${WRKSRC}/bin/epstopdf

post-install:
	${LN} -sf epstopdf ${DESTDIR}${PREFIX}/bin/repstopdf

.include "../../mk/bsd.pkg.mk"
