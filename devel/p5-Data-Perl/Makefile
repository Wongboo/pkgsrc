# $NetBSD: Makefile,v 1.11 2022/06/28 11:32:11 wiz Exp $

DISTNAME=	Data-Perl-0.002011
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Data/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/Data-Perl
COMMENT=	Base classes wrapping fundamental Perl data types
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-strictures-[0-9]*:../../devel/p5-strictures
DEPENDS+=	p5-Role-Tiny-[0-9]*:../../devel/p5-Role-Tiny
DEPENDS+=	p5-List-MoreUtils-[0-9]*:../../devel/p5-List-MoreUtils
DEPENDS+=	p5-Module-Runtime-[0-9]*:../../devel/p5-Module-Runtime

TEST_DEPENDS+=	p5-Test-Deep-[0-9]*:../../devel/p5-Test-Deep
TEST_DEPENDS+=	p5-Test-Fatal-[0-9]*:../../devel/p5-Test-Fatal
TEST_DEPENDS+=	p5-Test-Output-[0-9]*:../../devel/p5-Test-Output

PERL5_PACKLIST=	auto/Data/Perl/.packlist

USE_LANGUAGES=	#

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
