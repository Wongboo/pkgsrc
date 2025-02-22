# $NetBSD: Makefile,v 1.19 2022/09/11 17:08:49 wiz Exp $

DISTNAME=	barman-2.19
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	databases python
MASTER_SITES=	${MASTER_SITE_PYPI:=b/barman/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.pgbarman.org/
COMMENT=	Backup and Recovery Manager for PostgreSQL
LICENSE=	gnu-gpl-v3

DEPENDS+=	${PYPKGPREFIX}-argcomplete-[0-9]*:../../devel/py-argcomplete
DEPENDS+=	${PYPKGPREFIX}-boto3-[0-9]*:../../net/py-boto3
DEPENDS+=	${PYPKGPREFIX}-dateutil-[0-9]*:../../time/py-dateutil
DEPENDS+=	${PYPKGPREFIX}-psycopg2>=2.4.2:../../databases/py-psycopg2
DEPENDS+=	rsync-[0-9]*:../../net/rsync

USE_LANGUAGES=	# none

PYTHON_SELF_CONFLICT=	yes

PYTHON_VERSIONS_INCOMPATIBLE=	27

USE_PKG_RESOURCES=	yes

CONF_FILES+=		share/examples/barman/barman.conf \
			${PKG_SYSCONFDIR}/barman.conf
INSTALLATION_DIRS+=	share/examples/barman

.include "../../mk/bsd.prefs.mk"

BUILD_DEFS+=		VARBASE

BARMAN_DIR?=		${VARBASE}/lib/barman
BARMAN_LOG_DIR?=	${VARBASE}/log/barman
BARMAN_USER=		barman
BARMAN_GROUP=		${BARMAN_USER}

PKG_GROUPS+=		${BARMAN_GROUP}
PKG_USERS+=		${BARMAN_USER}:${BARMAN_GROUP}
PKG_GECOS.barman=	PG Barman user
PKG_HOME.barman=	${BARMAN_DIR}

OWN_DIRS_PERMS+=	${BARMAN_DIR} ${BARMAN_USER} ${BARMAN_GROUP} 0700
OWN_DIRS_PERMS+=	${BARMAN_LOG_DIR} ${BARMAN_USER} ${BARMAN_GROUP} 0755

SUBST_CLASSES+=		path
SUBST_STAGE.path=	pre-configure
SUBST_FILES.path=	barman/config.py doc/barman.conf setup.py
SUBST_MESSAGE.path=	Fixing paths
SUBST_SED.path=		-e 's,/etc/,${PKG_SYSCONFDIR}/,g'
SUBST_SED.path+=	-e 's,/var/lib/barman,${BARMAN_DIR},g'
SUBST_SED.path+=	-e 's,/var/log/barman,${BARMAN_LOG_DIR},g'
SUBST_SED.path+=	-e 's,share/man,${PKGMANDIR},g'

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/barman.conf \
		${DESTDIR}${PREFIX}/share/examples/barman/barman.conf

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
