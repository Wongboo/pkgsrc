# $NetBSD: Makefile,v 1.114 2022/06/28 11:35:01 wiz Exp $

DISTNAME=	ktorrent-${KTORRENT_VER}
PKGREVISION=	39
CATEGORIES=	net kde
#MASTER_SITES=	http://ktorrent.pwsp.net/downloads/${KTORRENT_VER}/
EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS+=	automoc4>=0.9.87:../../devel/automoc4

.include "../../net/libktorrent/Makefile.version"

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	http://ktorrent.pwsp.net/
COMMENT=	Graphical BitTorrent client for KDE4
LICENSE=	gnu-gpl-v2

USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake msgfmt pkg-config perl
USE_CMAKE=		yes

DEPENDS+=	oxygen-icons-[0-9]*:../../graphics/oxygen-icons

CFLAGS+=		-DENABLE_KIO_MAGNET=1
SCRDIR=			share/kde/apps/ktorrent/scripts

CHECK_INTERPRETER_SKIP=	${SCRDIR}/auto_remove/auto_remove.py \
			${SCRDIR}/auto_resume/auto_resume.py \
			${SCRDIR}/email_notifications/email_notifications.py \
			${SCRDIR}/tracker_groups/tracker_groups.py

.include "../../audio/taglib/buildlink3.mk"
.include "../../misc/kdepimlibs4/buildlink3.mk"
.include "../../net/libktorrent/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kde-workspace4/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
