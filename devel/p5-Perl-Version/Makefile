# $NetBSD: Makefile,v 1.20 2022/06/28 11:33:05 wiz Exp $
#

DISTNAME=	Perl-Version-1.013
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	8
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Perl/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/Perl-Version
COMMENT=	Perl 5 module to parse and manipulate Perl version strings
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=		# empty
MAKE_ENV+=		PERL_MM_USE_DEFAULT=1

# for make test
BUILD_DEPENDS+=	p5-File-Slurp-Tiny-[0-9]*:../../devel/p5-File-Slurp-Tiny

PERL5_PACKLIST=		auto/Perl/Version/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
