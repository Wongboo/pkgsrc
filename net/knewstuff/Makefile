# $NetBSD: Makefile,v 1.57 2022/09/11 12:51:10 wiz Exp $

DISTNAME=	knewstuff-${KF5VER}
PKGREVISION=	3
CATEGORIES=	net

HOMEPAGE=	https://community.kde.org/Frameworks
COMMENT=	Support for downloading application assets from the network
LICENSE=	gnu-lgpl-v2.1

.include "../../meta-pkgs/kde/kf5.mk"

USE_TOOLS+=	msgmerge

.include "../../devel/kio/buildlink3.mk"
.include "../../devel/kpackage/buildlink3.mk"
.include "../../www/syndication/buildlink3.mk"
.include "../../x11/kirigami2/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
