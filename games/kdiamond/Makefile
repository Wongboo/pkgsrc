# $NetBSD: Makefile,v 1.55 2022/09/11 12:51:41 wiz Exp $

DISTNAME=	kdiamond-${KAPPSVER}
PKGREVISION=	9
CATEGORIES=	games

HOMEPAGE=	https://kde.org/applications/games/kdiamond/
COMMENT=	Build lines of three similar diamonds
LICENSE=	gnu-gpl-v2 AND gnu-fdl-v1.2

.include "../../meta-pkgs/kde/applications.mk"

BUILD_DEPENDS+=	kdoctools>=5.19.0:../../devel/kdoctools

USE_TOOLS+=	msgmerge

#SUBST_CLASSES+=		xdg
#SUBST_STAGE.xdg=	pre-configure
#SUBST_MESSAGE.xdg=	Install via examples dir.
#SUBST_FILES.xdg=	src/CMakeLists.txt
#SUBST_SED.xdg=		-e 's:{KDE_INSTALL_CONFDIR}:{KDE_INSTALL_XDG_EX_DIR}:'

#MAKE_DIRS+=	${PKG_SYSCONFDIR}/xdg
#CONF_FILES+=	${PREFIX}/share/examples/kde-xdg/kdiamond.knsrc \
#		${PKG_SYSCONFDIR}/xdg/kdiamond.knsrc

.include "../../devel/knotifyconfig/buildlink3.mk"
.include "../../games/libkdegames/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
