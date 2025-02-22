# $NetBSD: Makefile,v 1.6 2022/09/07 06:50:45 pho Exp $

DISTNAME=	haskell-language-server-1.6.1.1
PKGNAME=	${DISTNAME}
PKGREVISION=	5
CATEGORIES=	devel

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	LSP server for GHC
LICENSE=	apache-2.0

# HLS is built with optparse-applicative, and can generate shell completion
# scripts automatically.
OPTPARSE_APPLICATIVE_EXECUTABLES+=	haskell-language-server
OPTPARSE_APPLICATIVE_EXECUTABLES+=	haskell-language-server-wrapper
.include "../../devel/hs-optparse-applicative/application.mk"

# lib:haskell-language-server
.include "../../converters/hs-aeson-pretty/buildlink3.mk"
.include "../../devel/hs-async/buildlink3.mk"
.include "../../converters/hs-base16-bytestring/buildlink3.mk"
.include "../../security/hs-cryptohash-sha1/buildlink3.mk"
.include "../../devel/hs-data-default/buildlink3.mk"
.include "../../misc/hs-extra/buildlink3.mk"
.include "../../devel/hs-ghcide/buildlink3.mk"
.include "../../devel/hs-githash/buildlink3.mk"
.include "../../devel/hs-hie-bios/buildlink3.mk"
.include "../../devel/hs-hiedb/buildlink3.mk"
.include "../../devel/hs-hls-graph/buildlink3.mk"
.include "../../devel/hs-hls-plugin-api/buildlink3.mk"
.include "../../sysutils/hs-hslogger/buildlink3.mk"
.include "../../devel/hs-lsp/buildlink3.mk"
.include "../../devel/hs-optparse-applicative/buildlink3.mk"
.include "../../devel/hs-optparse-simple/buildlink3.mk"
.include "../../devel/hs-safe-exceptions/buildlink3.mk"
.include "../../databases/hs-sqlite-simple/buildlink3.mk"
.include "../../devel/hs-unordered-containers/buildlink3.mk"

# exe:haskell-language-server
.include "../../converters/hs-aeson/buildlink3.mk"
.include "../../devel/hs-hashable/buildlink3.mk"
.include "../../devel/hs-lens/buildlink3.mk"
.include "../../textproc/hs-regex-tdfa/buildlink3.mk"
.include "../../sysutils/hs-temporary/buildlink3.mk"
.include "../../devel/hs-hls-call-hierarchy-plugin/buildlink3.mk"
#.include "../../devel/hs-hls-class-plugin/buildlink3.mk" # Not buildable with GHC >= 9.2.1
CONFIGURE_ARGS+=	-f-haddockcomments # Not buildable with GHC >= 9.2.1
#.include "../../devel/hs-hls-haddock-comments-plugin/buildlink3.mk"
CONFIGURE_ARGS+=	-f-eval # Not buildable with GHC >= 9.2.1
#.include "../../devel/hs-hls-eval-plugin/buildlink3.mk"
.include "../../devel/hs-hls-explicit-imports-plugin/buildlink3.mk"
.include "../../devel/hs-hls-refine-imports-plugin/buildlink3.mk"
#.include "../../devel/hs-hls-rename-plugin/buildlink3.mk" # Disabled by default; presumably for a good reason
#.include "../../devel/hs-hls-retrie-plugin/buildlink3.mk" # Not buildable with GHC >= 9.2.1
#.include "../../devel/hs-hls-tactics-plugin/buildlink3.mk" # Not buildable with GHC >= 9.0.1
#.include "../../devel/hs-hls-hlint-plugin/buildlink3.mk" # Not buildable with GHC >= 9.2.1
.include "../../devel/hs-hls-module-name-plugin/buildlink3.mk"
.include "../../devel/hs-hls-pragmas-plugin/buildlink3.mk"
#.include "../../devel/hs-hls-splice-plugin/buildlink3.mk" # Not buildable with GHC >= 9.2.1
.include "../../devel/hs-hls-alternate-number-format-plugin/buildlink3.mk"
.include "../../devel/hs-hls-qualify-imported-names-plugin/buildlink3.mk"
.include "../../devel/hs-hls-selection-range-plugin/buildlink3.mk"
.include "../../devel/hs-hls-floskell-plugin/buildlink3.mk"
.include "../../devel/hs-hls-fourmolu-plugin/buildlink3.mk"
.include "../../devel/hs-hls-oumolu-plugin/buildlink3.mk"
#.include "../../devel/hs-hls-stylish-haskell-plugin/buildlink3.mk" # Not buildable with GHC >= 9.0.1
#.include "../../devel/hs-hls-brittany-plugin/buildlink3.mk" # Not buildable with GHC >= 9.0.1

# exe:haskell-language-server-wrapper
.include "../../devel/hs-ghc-paths/buildlink3.mk"
.include "../../devel/hs-gitrev/buildlink3.mk"

.include "../../mk/haskell.mk"
.include "../../mk/bsd.pkg.mk"
