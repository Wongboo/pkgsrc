# $NetBSD: Makefile,v 1.18 2022/06/28 11:32:44 wiz Exp $
#

DISTNAME=	Mixin-ExtraFields-0.140002
#               0.100971 -> 0.100.971, 0.140002 -> 0.140.002
PKGNAME=	p5-${DISTNAME:C/([0-9])\.([0-9][0-9][0-9])([0-9][0-9][0-9])/\1.\2.\3/}
PKGREVISION=	8
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/R/RJ/RJBS/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/Mixin-ExtraFields
COMMENT=	Perl 5 module to add extra stashes of data to your objects
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=		# empty

DEPENDS+=	p5-String-RewritePrefix-[0-9]*:../../textproc/p5-String-RewritePrefix
DEPENDS+=	p5-Sub-Exporter>=0.972:../../devel/p5-Sub-Exporter
DEPENDS+=	p5-Sub-Install-[0-9]*:../../devel/p5-Sub-Install

PERL5_PACKLIST=	auto/Mixin/ExtraFields/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
