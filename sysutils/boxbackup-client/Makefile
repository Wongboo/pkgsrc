# $NetBSD: Makefile,v 1.26 2022/06/28 11:35:54 wiz Exp $
#

DISTNAME=	boxbackup-0.11.1
PKGNAME=	boxbackup-client-0.11.1
PKGREVISION=	14
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=boxbackup/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.boxbackup.org/
COMMENT=	Backup tool

MAKE_JOBS_SAFE=	no

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c++
USE_TOOLS+=	perl:run gmake

REPLACE_PERL+=	bin/bbackupd/bbackupd-config

INSTALLATION_DIRS+=	bin
#INSTALL_TARGET=	install-backup-client

.include "../../mk/bsd.prefs.mk"

# for backtrace
.if ${OPSYS} == "NetBSD" && exists(/usr/include/execinfo.h)
LIBS+=	-lexecinfo
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/parcels/boxbackup*-backup-client-*/bbackupctl ${DESTDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/parcels/boxbackup*-backup-client-*/bbackupd ${DESTDIR}${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/parcels/boxbackup*-backup-client-*/bbackupd-config ${DESTDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/parcels/boxbackup*-backup-client-*/bbackupquery ${DESTDIR}${PREFIX}/bin

.include "../../devel/zlib/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
#.include "../../devel/readline/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
