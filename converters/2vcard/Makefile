# $NetBSD: Makefile,v 1.24 2022/06/28 11:31:07 wiz Exp $
#

DISTNAME=	2vcard-0.6
PKGREVISION=	3
CATEGORIES=	converters
MASTER_SITES=	https://www.netmeister.org/apps/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.netmeister.org/apps/2vcard/
COMMENT=	Convert an addressbook to the popular VCARD file format
LICENSE=	modified-bsd

USE_TOOLS+=	perl:run

NO_BUILD=	yes
AUTO_MKDIRS=	yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/2vcard ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/2vcard.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/
	${INSTALL_DATA} ${WRKSRC}/doc/html/* \
		${DESTDIR}${PREFIX}/share/doc/2vcard

.include "../../mk/bsd.pkg.mk"
