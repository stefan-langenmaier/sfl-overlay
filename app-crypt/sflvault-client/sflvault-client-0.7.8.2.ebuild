# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

PYTHON_COMPAT=( python{2_6,2_7} )

inherit eutils distutils-r1

MYPN=SFLvault-client
MYP=${MYPN}-${PV}

DESCRIPTION="SFLvault is a networked credentials store and authentication manager developed by Savoir-faire Linux"
HOMEPAGE="http://www.sflvault.org/"
SRC_URI="mirror://pypi/${MYPN:0:1}/${MYPN}/${MYP}.tar.gz"

LICENSE="GPL-3"

SLOT="0"

KEYWORDS="-* amd64"

IUSE=""

RESTRICT=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	=dev-libs/sflvault-common-0.7.8.1"
RDEPEND="${DEPEND}
	>=dev-python/pexpect-2.3
	>=dev-python/urwid-0.9.8.1
	dev-python/decorator"

S=${WORKDIR}/${MYP}

python_install_all() {
	distutils-r1_python_install_all

	# UGLY HACK
	# the files is already provided by sflvault-common
	# this is to avoid a file collision
	cd "$D"
	find . -wholename "./*/sflvault/__init__.py" -exec rm -rf {} \;
}
