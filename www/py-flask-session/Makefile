# $NetBSD: Makefile,v 1.2 2022/09/01 17:15:49 wiz Exp $

DISTNAME=	Flask-Session-0.4.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_PYPI:=f/flask-session/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/fengsp/flask-session
COMMENT=	Adds server-side session support to your Flask application
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-flask>=0.8:../../www/py-flask
DEPENDS+=	${PYPKGPREFIX}-cachelib-[0-9]*:../../devel/py-cachelib

USE_LANGUAGES=	# none

PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
