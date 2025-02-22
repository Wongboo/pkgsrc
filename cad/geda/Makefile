# $NetBSD: Makefile,v 1.133 2022/09/18 12:48:26 nia Exp $

DISTNAME=	geda-gaf-1.8.2
PKGNAME=	${DISTNAME:S/-gaf-/-/}
PKGREVISION=	33
CATEGORIES=	cad
MASTER_SITES=	http://ftp.geda-project.org/geda-gaf/stable/v1.8/1.8.2/

MAINTAINER=	dmcmahill@NetBSD.org
HOMEPAGE=	http://www.geda-project.org/
COMMENT=	Toolset for automating electronic design
LICENSE=	gnu-gpl-v2

# Older versions of the gEDA suite had each of the tools as a standalone tarball and build.
# Beginning with 1.6, the build system has been unified.
CONFLICTS+=	gattrib-[0-9]*
CONFLICTS+=	geda-docs-[0-9]*
CONFLICTS+=	geda-examples-[0-9]*
CONFLICTS+=	geda-utils-[0-9]*
CONFLICTS+=	geda-symbols-[0-9]*
CONFLICTS+=	gnetlist-[0-9]*
CONFLICTS+=	gschem-[0-9]*
CONFLICTS+=	gsymcheck-[0-9]*
CONFLICTS+=	libgeda-[0-9]*

USE_PKGLOCALEDIR=	yes

DEPENDS+=		gettext-tools>=0.14.6:../../devel/gettext-tools

GNU_CONFIGURE=		YES
USE_LIBTOOL=		YES
USE_TOOLS+=		bash gmake msgfmt pkg-config

# let (f)lex rebuild this file.  The distributed one doesn't
# always work.
post-patch:
	${RM} -f ${WRKSRC}/utils/src/olib.c

REPLACE_BASH=		utils/scripts/gnet_hier_verilog.sh
REPLACE_PYTHON=		utils/scripts/tragesym
REPLACE_PERL+=		utils/scripts/pads_backannotate \
			utils/scripts/gsymfix \
			utils/scripts/pcb_backannotate \
			utils/scripts/refdes_renum \
			utils/scripts/sarlacc_sym \
			utils/gxyrs/gxyrs.pl

# needs GNU m4 for the PCBboard and gsch2pcb netlisters
USE_TOOLS+=		gmake gm4:run pkg-config

SUBST_CLASSES+=			python
SUBST_STAGE.python=		pre-configure
SUBST_FILES.python=		utils/scripts/garchive.py
SUBST_SED.python=		-e 's,/usr/bin/env python,${PYTHONBIN},'
SUBST_SED.python+=		-e 's,%PYTHONBIN%,${PYTHONBIN},'

REPLACE_SH+=		gnetlist/scripts/sch2eaglepos.sh
USE_TOOLS+=		sh:run

# for gsch2pcb
CONFIGURE_ARGS+=	--with-pcb-datadir=${PREFIX}/share
USE_TOOLS+=		gawk:run lex perl:run pkg-config

# disable groff for a consistent build
# (otherwise html man pages appear if and only if groff -Thtml works)
CONFIGURE_ENV+=		GROFF=false

INFO_FILES=	yes

.include "../../lang/python/application.mk"
.include "../../databases/shared-mime-info/mimedb.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libgetopt/buildlink3.mk"
.include "../../devel/libstroke/buildlink3.mk"
.include "../../graphics/gd/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../lang/guile20/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
