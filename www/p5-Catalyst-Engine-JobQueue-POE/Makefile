# $NetBSD: Makefile,v 1.23 2022/06/28 11:37:15 wiz Exp $

DISTNAME=	Catalyst-Engine-JobQueue-POE-0.0.4
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	9
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/K/KI/KIXX/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/Catalyst-Engine-JobQueue-POE
COMMENT=	Implementing a Catalyst job queue with POE
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Email-MIME>=1.903:../../mail/p5-Email-MIME
DEPENDS+=	p5-Email-Send>=2.15:../../mail/p5-Email-Send
DEPENDS+=	p5-Catalyst-Runtime>=5.7001:../../www/p5-Catalyst-Runtime
DEPENDS+=	p5-POE-Component-Cron>=0.014:../../devel/p5-POE-Component-Cron

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Catalyst/Engine/JobQueue/POE/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
