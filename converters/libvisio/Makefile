# $NetBSD: Makefile,v 1.79 2022/06/28 11:31:09 wiz Exp $

DISTNAME=	libvisio-0.1.7
PKGREVISION=	16
CATEGORIES=	converters
MASTER_SITES=	http://dev-www.libreoffice.org/src/libvisio/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	ftigeot@wolfpond.org
HOMEPAGE=	https://wiki.documentfoundation.org/DLP/Libraries/libvisio
COMMENT=	Library and tools for parsing the visio file format
LICENSE=	gnu-lgpl-v2.1 OR mpl-1.1 OR gnu-gpl-v2

#BUILD_DEPENDS+=	doxygen>=1.8.9:../../devel/doxygen
BUILD_DEPENDS+=		gperf-[0-9]*:../../devel/gperf

USE_LANGUAGES=		c c++11
USE_LIBTOOL=		yes
USE_TOOLS+=		perl:build pkg-config
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-werror
CONFIGURE_ARGS+=	--without-docs
PKGCONFIG_OVERRIDE=	libvisio.pc.in

.include "../../converters/libwpd/buildlink3.mk"
.include "../../converters/libwpg/buildlink3.mk"
.include "../../converters/librevenge/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/cppunit/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/icu/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
