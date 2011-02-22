# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

EAPI=2

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Process-Oriented Concurrency for Haskell"
HOMEPAGE="http://hackage.haskell.org/package/chp"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.8
         >=dev-haskell/stm-2.1.1.0"
DEPEND=">=dev-haskell/cabal-1.6
		${RDEPEND}"
