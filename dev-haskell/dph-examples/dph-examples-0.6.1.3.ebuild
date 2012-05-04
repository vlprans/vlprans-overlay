# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.17

EAPI=4

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="Data Parallel Haskell example programs."
HOMEPAGE="http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		=dev-haskell/dph-base-0.6.1*
		=dev-haskell/dph-lifted-vseg-0.6.1*
		=dev-haskell/dph-prim-par-0.6.1*
		=dev-haskell/gloss-1.6.1*
		=dev-haskell/hunit-1.2*
		=dev-haskell/vector-0.9*
		>=dev-lang/ghc-6.12.3"