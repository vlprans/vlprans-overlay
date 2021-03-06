# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="Examples using Data Parallel Haskell"
HOMEPAGE="http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		=dev-haskell/dph-base-0.5*
		=dev-haskell/dph-par-0.5*
		=dev-haskell/dph-prim-par-0.5*
		=dev-haskell/dph-prim-seq-0.5*
		=dev-haskell/dph-seq-0.5*
		>=dev-haskell/gloss-1.3
		=dev-haskell/parseargs-0.1*
		>=dev-haskell/vector-0.7
		>=dev-lang/ghc-6.12.3"

src_prepare() {
    sed -i -e 's/vector.*==.*0\.7\.\*/vector >= 0.7/' "${S}/${PN}.cabal"
    sed -i -e 's/base.*==.*4\.4\.\*/base >= 4.4/' "${S}/${PN}.cabal"
    sed -i -e 's/gloss.*==.*1\.3\.\*/gloss >= 1.3/' "${S}/${PN}.cabal"
}
