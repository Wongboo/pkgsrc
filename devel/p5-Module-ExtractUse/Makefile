# $NetBSD: Makefile,v 1.23 2022/06/28 11:32:46 wiz Exp $
#

DISTNAME=	Module-ExtractUse-0.344
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Module/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/Module-ExtractUse
COMMENT=	Perl 5 module to find out what modules are used
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Parse-RecDescent>=1.967.9:../../devel/p5-Parse-RecDescent
DEPENDS+=	p5-Pod-Strip>=1.00:../../textproc/p5-Pod-Strip

BUILD_DEPENDS+=	p5-Test-Deep>=0.087:../../devel/p5-Test-Deep
BUILD_DEPENDS+=	p5-Test-NoWarnings>=0:../../devel/p5-Test-NoWarnings
BUILD_DEPENDS+=	p5-Test-Pod>=0:../../devel/p5-Test-Pod
BUILD_DEPENDS+=	p5-Test-Pod-Coverage>=0:../../devel/p5-Test-Pod-Coverage
BUILD_DEPENDS+=	p5-UNIVERSAL-require>=0:../../devel/p5-UNIVERSAL-require

PERL5_PACKLIST=		auto/Module/ExtractUse/.packlist
PERL5_MODULE_TYPE=	Module::Build

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
