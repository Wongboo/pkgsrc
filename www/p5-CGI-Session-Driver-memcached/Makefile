# $NetBSD: Makefile,v 1.15 2022/06/28 11:37:12 wiz Exp $

DISTNAME=	CGI-Session-Driver-memcached-0.04
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	12
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=CGI/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/CGI-Session-Driver-memcached
COMMENT=	CGI::Session driver for memcached
LICENSE=	artistic

DEPENDS+=	p5-Cache-Memcached>=1.29:../../devel/p5-Cache-Memcached
DEPENDS+=	p5-CGI-Session>=4.30:../../www/p5-CGI-Session

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/CGI/Session/Driver/memcached/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
