# $NetBSD: Makefile,v 1.125 2022/07/14 23:46:19 dholland Exp $

DISTNAME=	texmaker-5.1.2
PKGREVISION=	3
CATEGORIES=	editors
MASTER_SITES=	http://www.xm1math.net/texmaker/
EXTRACT_SUFX=	.tar.bz2
EXTRACT_USING=	bsdtar

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.xm1math.net/texmaker/
COMMENT=	LaTeX editor and front end
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c++ c

INSTALL_MAKE_FLAGS+=	INSTALL_ROOT=${DESTDIR}

do-configure:
	cd ${WRKSRC} && env ${CONFIGURE_ENV} \
	${QTDIR}/bin/qmake PREFIX=${PREFIX} texmaker.pro \
		DESKTOPDIR=${PREFIX}/share/applications \
		ICONDIR=${PREFIX}/share/pixmaps \
		METAINFODIR=${PREFIX}/share/appdata

pre-configure:
	${CP} ${FILESDIR}/fxge_pkgsrcfonts.inc ${WRKSRC}/pdfium/core/fxge
	${CP} ${FILESDIR}/fxge_x11fonts.inc ${WRKSRC}/pdfium/core/fxge
	${CP} ${FILESDIR}/fgas_stdfontmgr_pkgsrcfonts.inc \
		${WRKSRC}/pdfium/xfa/fgas/font
	${CP} ${FILESDIR}/fgas_stdfontmgr_x11fonts.inc \
		${WRKSRC}/pdfium/xfa/fgas/font

.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../textproc/hunspell/buildlink3.mk"
.include "../../x11/qt5-qtdeclarative/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
