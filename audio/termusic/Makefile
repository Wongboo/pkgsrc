# $NetBSD: Makefile,v 1.42 2022/08/19 10:17:16 pin Exp $

DISTNAME=	termusic-0.7.3
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_GITHUB:=tramhao/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pin@NetBSD.org
HOMEPAGE=	https://github.com/tramhao/termusic/
COMMENT=	Music Player TUI written in Rust
LICENSE=	mit AND gnu-gpl-v3

.include "cargo-depends.mk"

USE_TOOLS+=	pkg-config

INSTALLATION_DIRS=	bin

RUSTFLAGS+=	-C link-arg=${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.gstreamer1}/lib

CARGO_NO_DEFAULT_FEATURES=	YES
CARGO_FEATURES+=		gst

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/termusic \
		${DESTDIR}${PREFIX}/bin

DEPENDS+=	gst-plugins1-libav-[0-9]*:../../multimedia/gst-plugins1-libav
DEPENDS+=	gstreamer1-default-backend-[0-9]*:../../meta-pkgs/gstreamer1-default-backend
DEPENDS+=	yt-dlp-[0-9]*:../../net/yt-dlp

.include "../../lang/rust/cargo.mk"
.include "../../multimedia/gstreamer1/buildlink3.mk"
.include "../../multimedia/gst-plugins1-base/buildlink3.mk"
.include "../../multimedia/gst-plugins1-good/buildlink3.mk"
.include "../../multimedia/gst-plugins1-bad/buildlink3.mk"
.include "../../multimedia/gst-plugins1-ugly/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
