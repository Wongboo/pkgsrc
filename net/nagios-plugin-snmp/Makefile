# $NetBSD: Makefile,v 1.30 2022/06/28 11:35:03 wiz Exp $
#

PKGNAME=	nagios-plugin-snmp-${PLUGINSVERSION}
PKGREVISION=	6
CATEGORIES=	net sysutils

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Nagios snmp plugins
LICENSE=	gnu-gpl-v3

DEPENDS+=	nagios-plugins-${PLUGINSVERSION}{,nb[0-9]*}:../../net/nagios-plugins
DEPENDS+=	p5-Net-SNMP-[0-9]*:../../net/p5-Net-SNMP

.include "../../net/nagios-plugins/Makefile.common"

USE_TOOLS+=	perl:run

BINARY_TARGET=	check_snmp check_hpjd
SCRIPT_TARGET=	check_ifoperstatus check_ifstatus
SCRIPT_TARGET+=	check_breeze check_wave

.include "../../net/nagios-plugins/Makefile.plugin"
.include "../../net/net-snmp/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
