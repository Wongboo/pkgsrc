# $NetBSD: Makefile,v 1.19 2022/06/28 11:33:11 wiz Exp $

DISTNAME=	SVN-Dump-0.08
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	devel perl5 scm
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=SVN/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/SVN-Dump
COMMENT=	Perl interface to Subversion dumps
LICENSE=	${PERL5_LICENSE}

PERL5_PACKLIST=		auto/SVN/Dump/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
