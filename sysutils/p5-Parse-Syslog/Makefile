# $NetBSD: Makefile,v 1.21 2022/06/28 11:36:02 wiz Exp $
#

DISTNAME=		Parse-Syslog-1.10
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		14
CATEGORIES=		sysutils perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Parse/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://metacpan.org/release/Parse-Syslog
COMMENT=		Perl5 module for parsing Unix syslog files

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Parse/Syslog/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
