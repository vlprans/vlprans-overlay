# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

ECVS_SERVER="www.gccxml.org:/cvsroot/GCC_XML"
ECVS_MODULE="gccxml"
ECVS_AUTH="pserver"
ECVS_USER="anoncvs"

inherit cvs

DESCRIPTION="XML output extension to GCC"
HOMEPAGE="http://www.gccxml.org/"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND=">=dev-util/cmake-2.4.6"
RDEPEND=""

MYBUILDDIR=${WORKDIR}/build
S=${WORKDIR}/${PN}

src_compile() {
	mkdir "${MYBUILDDIR}"
	cd ${MYBUILDDIR}
	cmake ${S} \
		-DCMAKE_INSTALL_PREFIX:PATH=/usr \
		|| die "cmake failed"

		#-DCMAKE_CXX_COMPILER:FILEPATH="$(tc-getCXX)" \
		#-DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
		#-DCMAKE_C_COMPILER:FILEPATH="$(tc-getCC)" \
		#-DCMAKE_C_FLAGS="${CFLAGS}" \
		#
	emake || die "emake failed"
}

src_install() {
	cd ${MYBUILDDIR}
	emake DESTDIR="${D}" install || die "emake install failed"
}
