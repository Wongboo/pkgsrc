# $NetBSD: Makefile,v 1.15 2022/06/28 11:32:39 wiz Exp $
#

DISTNAME=	LEOCHARRE-Debug-1.03
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	12
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/L/LE/LEOCHARRE/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/LEOCHARRE-Debug
COMMENT=	Leo Charre's debug sub
LICENSE=	${PERL5_LICENSE}

PERL5_PACKLIST=		auto/LEOCHARRE/Debug/.packlist
USE_LANGUAGES=		# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
