# $NetBSD: Makefile,v 1.10 2022/08/17 12:20:06 tnn Exp $

DISTNAME=	s6-portable-utils-2.2.4.0
PKGREVISION=	1
CATEGORIES=	misc
MASTER_SITES=	${HOMEPAGE}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${MANPAGES_DIST}

MAINTAINER=	charlotte@NetBSD.org
HOMEPAGE=	https://www.skarnet.org/software/s6-portable-utils/
COMMENT=	Tiny portable generic utilties
LICENSE=	isc

# man-pages version is usually not exactly in-sync with PKGVERSION_NOREV
MANPAGES_VERSION=	2.2.4.0.1
MANPAGES_DIST=		s6-portable-utils-man-pages-${MANPAGES_VERSION}.tar.gz
SITES.${MANPAGES_DIST}=	-${MASTER_SITE_GITHUB:=flexibeast/s6-portable-utils-man-pages/archive/}v${MANPAGES_VERSION}.tar.gz

USE_TOOLS+=		gmake
HAS_CONFIGURE=		yes
CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--with-sysdeps=${PREFIX}/lib/skalibs/sysdeps
CONFIGURE_ARGS+=	--with-lib=${PREFIX}/lib/skalibs
CONFIGURE_ARGS+=	--with-include=${PREFIX}/include

INSTALLATION_DIRS+=	${PKGMANDIR}/man1

.PHONY: do-install-manpages
post-install: do-install-manpages
do-install-manpages:
	cd ${WRKDIR}/${PKGBASE}-man-pages-*; for i in 1; do \
		for j in man$$i/*.$$i; do \
			${INSTALL_MAN} $$j \
			${DESTDIR}${PREFIX}/${PKGMANDIR}/man$$i; \
		done \
	done

.include "../../devel/skalibs/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
