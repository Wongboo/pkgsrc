# $NetBSD: Makefile,v 1.34 2022/08/11 05:08:08 gutteridge Exp $

DISTNAME=	Coder-0.3.0
PKGNAME=	deforaos-coder-0.3.0
PKGREVISION=	6
CATEGORIES=	devel
MASTER_SITES=	https://ftp.defora.org/pub/DeforaOS/Apps/Desktop/src/Coder/

MAINTAINER=	khorben@defora.org
HOMEPAGE=	https://www.defora.org/
COMMENT=	DeforaOS Coder

LICENSE=	gnu-gpl-v3

USE_TOOLS+=	pkg-config
USE_TOOLS+=	xgettext

BUILD_DEPENDS+=	libxslt-[0-9]*:../../textproc/libxslt
BUILD_DEPENDS+=	docbook-xsl-[0-9]*:../../textproc/docbook-xsl

DEPENDS+=	modular-xorg-xephyr-[0-9]*:../../x11/modular-xorg-xephyr

MAKE_FLAGS+=	DESTDIR=${DESTDIR}
MAKE_FLAGS+=	PREFIX=${PREFIX}
MAKE_FLAGS+=	CFLAGS=${CFLAGS:Q}
MAKE_FLAGS+=	LDFLAGS=${LDFLAGS:Q}
AUTO_MKDIRS=	yes

.include "../../mk/bsd.prefs.mk"

.if ${PKGMANDIR} != "share/man"
post-install:
	${MV} ${DESTDIR}${PREFIX}/share/man/html1/coder.html ${DESTDIR}${PREFIX}/${PKGMANDIR}/html1/coder.html
	${MV} ${DESTDIR}${PREFIX}/share/man/html1/debugger.html ${DESTDIR}${PREFIX}/${PKGMANDIR}/html1/debugger.html
	${MV} ${DESTDIR}${PREFIX}/share/man/html1/sequel.html ${DESTDIR}${PREFIX}/${PKGMANDIR}/html1/sequel.html
	${MV} ${DESTDIR}${PREFIX}/share/man/html1/simulator.html ${DESTDIR}${PREFIX}/${PKGMANDIR}/html1/simulator.html
	${RMDIR} ${DESTDIR}${PREFIX}/share/man/html1
	${MV} ${DESTDIR}${PREFIX}/share/man/man1/coder.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/coder.1
	${MV} ${DESTDIR}${PREFIX}/share/man/man1/debugger.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/debugger.1
	${MV} ${DESTDIR}${PREFIX}/share/man/man1/sequel.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/sequel.1
	${MV} ${DESTDIR}${PREFIX}/share/man/man1/simulator.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/simulator.1
	${RMDIR} ${DESTDIR}${PREFIX}/share/man/man1
	${RMDIR} ${DESTDIR}${PREFIX}/share/man
.endif

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../databases/deforaos-libdatabase/buildlink3.mk"
.include "../../devel/deforaos-asm/buildlink3.mk"
.include "../../devel/deforaos-configure/deforaos-configure.mk"
.include "../../x11/libXtst/buildlink3.mk"
.include "../../x11/deforaos-libdesktop/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
