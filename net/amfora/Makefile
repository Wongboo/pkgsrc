# $NetBSD: Makefile,v 1.5 2022/09/07 09:32:15 bsiegert Exp $

DISTNAME=	amfora-1.9.2
PKGREVISION=	4
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GITHUB:=makeworld-the-better-one/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	mj@mjturner.net
HOMEPAGE=	https://github.com/makeworld-the-better-one/amfora/
COMMENT=	Terminal browser for the Gemini protocol
LICENSE=	gnu-gpl-v3

WRKSRC=		${WRKDIR}/${DISTNAME}

INSTALLATION_DIRS=	bin share/applications

.include "go-modules.mk"

AMFORA_FLAGS+=		-s -w
AMFORA_FLAGS+=		-X main.version=${PKGVERSION_NOREV}
AMFORA_FLAGS+=		-X main.builtBy=pkgsrc

do-build:
	${RUN} cd ${WRKSRC} && ${_ULIMIT_CMD} ${PKGSRC_SETENV} ${MAKE_ENV} \
		${GO} build -o amfora -ldflags "${AMFORA_FLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/amfora \
		${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/amfora.desktop \
		${DESTDIR}${PREFIX}/share/applications

.include "../../lang/go/go-module.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
