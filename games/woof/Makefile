# $NetBSD: Makefile,v 1.41 2022/09/11 12:51:49 wiz Exp $

DISTNAME=	woof_10.2.0
PKGNAME=	${DISTNAME:S/_/-/}
PKGREVISION=	1
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_GITHUB:=fabiangreffrath/}
GITHUB_TAG=	${DISTNAME}
EXTRACT_USING=	bsdtar

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/fabiangreffrath/woof/
COMMENT=	Continuation of Lee Killough's Doom source port MBF
LICENSE=	gnu-gpl-v2

USE_LANGUAGES=	c99
USE_CMAKE=	yes
USE_TOOLS+=	pkg-config
CMAKE_ARGS+=	-G "Unix Makefiles" ..
CONFIGURE_DIRS=	build
WRKSRC=		${WRKDIR}/woof-${DISTNAME}

# DOOMWADDIR is intentionally shared with other Doom packages
DOOMWADDIR=	share/doom

# Add DOOMWADDIR to search path
SUBST_CLASSES+=		waddir
SUBST_STAGE.waddir=	pre-configure
SUBST_MESSAGE.waddir=	Preparing src/d_iwad.c file ...
SUBST_FILES.waddir=	src/d_iwad.c
SUBST_SED.waddir=	-e 's,PKGSRC_PREFIX,"${PREFIX}",'
SUBST_SED.waddir+=	-e 's,PKGSRC_DOOMWADDIR,"/${DOOMWADDIR}",'

# XDG desktop file and icon are installed by the build system with the logic:
#     if(UNIX AND NOT APPLE)
# Remove Apple exception because pkgsrc users maybe have X11 on Apple machines
SUBST_CLASSES+=		xdg
SUBST_STAGE.xdg=	pre-configure
SUBST_MESSAGE.xdg=	Preparing data/CMakeLists.txt file ...
SUBST_FILES.xdg=	data/CMakeLists.txt
SUBST_SED.xdg=		-e 's,UNIX AND NOT APPLE,UNIX,'

# Process INSTALL.pkgsrc
SUBST_CLASSES+=		install
SUBST_STAGE.install=	do-configure
SUBST_MESSAGE.install=	Preparing INSTALL.pkgsrc file ...
SUBST_FILES.install=	${WRKDIR}/INSTALL.pkgsrc
SUBST_SED.install=	-e 's,DOOMWADDIR,${PREFIX}/${DOOMWADDIR},'

pre-configure:
	cd ${WRKSRC}; mkdir build
	${CP} ${FILESDIR}/INSTALL.pkgsrc ${WRKDIR}

post-install:
	${INSTALL_DATA} ${WRKDIR}/INSTALL.pkgsrc \
		${DESTDIR}${PREFIX}/share/doc/woof/INSTALL.pkgsrc
	${MV} ${DESTDIR}${PREFIX}/share/doc/Woof/woof/CMDLINE.txt \
		${DESTDIR}${PREFIX}/share/doc/woof/CMDLINE.txt

.include "../../audio/SDL2_mixer/buildlink3.mk"
.include "../../audio/fluidsynth/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../devel/SDL2/buildlink3.mk"
.include "../../graphics/SDL2_image/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../net/SDL2_net/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"

.include "../../mk/bsd.pkg.mk"
