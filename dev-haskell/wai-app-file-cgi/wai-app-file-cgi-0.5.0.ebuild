# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.14

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="File/CGI App of WAI"
HOMEPAGE="http://www.mew.org/~kazu/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10.0.0
		dev-haskell/attoparsec-conduit
		dev-haskell/blaze-builder
		dev-haskell/case-insensitive
		dev-haskell/conduit
		dev-haskell/http-conduit
		dev-haskell/http-date
		dev-haskell/http-types
		dev-haskell/lifted-base
		dev-haskell/network
		dev-haskell/static-hash
		dev-haskell/transformers
		dev-haskell/wai
		>=dev-haskell/wai-app-static-0.3
		dev-haskell/wai-logger
		dev-haskell/wai-logger-prefork
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
