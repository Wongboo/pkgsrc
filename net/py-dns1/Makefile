# $NetBSD: Makefile,v 1.1 2022/08/23 21:45:30 wiz Exp $

DISTNAME=	dnspython-1.16.0
PKGREVISION=	2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/python-/-/}
CATEGORIES=	net python
MASTER_SITES=	http://www.dnspython.org/kits/${PKGVERSION_NOREV}/

MAINTAINER=	gson@NetBSD.org
HOMEPAGE=	http://www.dnspython.org/
COMMENT=	Python DNS toolkit (v1)
LICENSE=	isc

DEPENDS+=	${PYPKGPREFIX}-cryptodome-[0-9]*:../../security/py-cryptodome
DEPENDS+=	${PYPKGPREFIX}-ecdsa>=0.13:../../security/py-ecdsa
DEPENDS+=	${PYPKGPREFIX}-idna-[0-9]*:../../www/py-idna

USE_LANGUAGES=	# none

PYTHON_VERSIONS_ACCEPTED=	27

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
