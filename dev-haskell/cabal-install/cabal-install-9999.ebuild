# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="bin"
inherit haskell-cabal bash-completion eutils darcs

DESCRIPTION="The command-line interface for Cabal and Hackage."
HOMEPAGE="http://www.haskell.org/cabal/"
EDARCS_REPOSITORY="http://darcs.haskell.org/cabal-install/"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc64 ~sparc ~x86"

RDEPEND=">=dev-lang/ghc-6.4
		 >=dev-haskell/cabal-1.8"
DEPEND="${RDEPEND}
		>=dev-haskell/http-4000.0.2
		dev-haskell/network
		>=dev-haskell/zlib-0.4
		=dev-haskell/time-1.1*"

src_install() {
	haskell-cabal_src_install

	dobashcompletion "${S}/bash-completion/cabal"
}

pkg_postinst() {
	ghc-package_pkg_postinst

	bash-completion_pkg_postinst
}
