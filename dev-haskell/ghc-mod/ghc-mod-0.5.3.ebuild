# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

EAPI=2

CABAL_FEATURES="bin profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Happy Haskell programming on Emacs"
HOMEPAGE="http://www.mew.org/~kazu/proj/ghc-mod/en/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.8"
DEPEND=">=dev-haskell/cabal-1.6
		${RDEPEND}"
