# $NetBSD: Makefile,v 1.24 2022/08/31 15:43:48 taca Exp $

DISTNAME=	mechanize-2.8.5
CATEGORIES=	www

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/sparklemotion/mechanize
COMMENT=	Library to automate interaction with websites
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-addressable>=2.8<3:../../net/ruby-addressable
DEPENDS+=	${RUBY_PKGPREFIX}-domain_name>=0.5.20190701:../../net/ruby-domain_name
DEPENDS+=	${RUBY_PKGPREFIX}-http-cookie>=1.0.3:../../www/ruby-http-cookie
DEPENDS+=	${RUBY_PKGPREFIX}-mime-types>=3.0<4:../../mail/ruby-mime-types
DEPENDS+=	${RUBY_PKGPREFIX}-net-http-digest_auth>=1.4.1:../../www/ruby-net-http-digest_auth
DEPENDS+=	${RUBY_PKGPREFIX}-net-http-persistent>=2.5.2:../../www/ruby-net-http-persistent
DEPENDS+=	${RUBY_PKGPREFIX}-nokogiri>=1.11.2:../../textproc/ruby-nokogiri
DEPENDS+=	${RUBY_PKGPREFIX}-rubyntlm>=0.6.3:../../security/ruby-rubyntlm
#DEPENDS+=	${RUBY_PKGPREFIX}-webrick>=1.7<2:../../www/ruby-webrick
DEPENDS+=	${RUBY_PKGPREFIX}-webrobots>=0.1.2<0.2:../../www/ruby-webrobots

USE_LANGUAGES=	# empty

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
