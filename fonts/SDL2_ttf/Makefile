# $NetBSD: Makefile,v 1.21 2022/09/11 12:51:07 wiz Exp $

DISTNAME=	SDL2_ttf-2.20.1
PKGREVISION=	1
CATEGORIES=	fonts devel
MASTER_SITES=	https://www.libsdl.org/projects/SDL_ttf/release/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.libsdl.org/projects/SDL_ttf/
COMMENT=	Use TrueType fonts in your SDL2 applications
LICENSE=	zlib

USE_LANGUAGES=		c c++11
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
GNU_CONFIGURE=		yes

PKGCONFIG_OVERRIDE+=	SDL2_ttf.pc.in

CHECK_PORTABILITY_SKIP+=	Xcode/iOS/build-scripts/iosbuild.sh
CHECK_PORTABILITY_SKIP+=	Xcode/tvOS/build-scripts/tvosbuild.sh

.include "../../devel/SDL2/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
