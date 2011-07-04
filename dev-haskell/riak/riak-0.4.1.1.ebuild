# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="A Haskell client for the Riak decentralized data store"
HOMEPAGE="http://github.com/mailrank/riak-haskell-client"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE=""	#Fixme: "OtherLicense", please fill in manually
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.3.2.4
		>=dev-haskell/attoparsec-0.8.5.3
		dev-haskell/binary
		dev-haskell/blaze-builder
		>=dev-haskell/network-2.3
		>=dev-haskell/protocol-buffers-1.8.0
		dev-haskell/puremd5
		>=dev-haskell/resource-pool-0.1.0.2
		>=dev-haskell/riak-protobuf-0.14.0.0
		>=dev-haskell/text-0.11.0.6
		dev-haskell/time
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"