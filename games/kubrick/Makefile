# $NetBSD: Makefile,v 1.54 2022/09/11 12:51:44 wiz Exp $

DISTNAME=	kubrick-${KAPPSVER}
PKGREVISION=	9
CATEGORIES=	games

HOMEPAGE=	https://kde.org/applications/games/kubrick/
COMMENT=	Game based on the Rubik's Cube puzzle
LICENSE=	gnu-gpl-v2 AND gnu-fdl-v1.2

.include "../../meta-pkgs/kde/applications.mk"

BUILD_DEPENDS+=	kdoctools>=5.19.0:../../devel/kdoctools

USE_TOOLS+=	msgmerge

.include "../../games/libkdegames/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
