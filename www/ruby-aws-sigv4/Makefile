# $NetBSD: Makefile,v 1.3 2022/09/04 15:28:29 taca Exp $

DISTNAME=	aws-sigv4-1.5.1
CATEGORIES=	www

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/aws/aws-sdk-ruby
COMMENT=	AWS Signature Version 4 library
LICENSE=	apache-2.0

DEPENDS+=	${RUBY_PKGPREFIX}-aws-eventstream>=1<2:../../www/ruby-aws-eventstream

USE_LANGUAGES=		# none

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
