# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

PYTHON_COMPAT=( python{2_6,2_7} )

inherit eutils distutils-r1

MYPN=SFLvault-common
MYP=${MYPN}-${PV}

DESCRIPTION="SFLvault is a networked credentials store and authentication manager developed by Savoir-faire Linux"
HOMEPAGE="http://www.sflvault.org/"
SRC_URI="mirror://pypi/${MYPN:0:1}/${MYPN}/${MYP}.tar.gz"

LICENSE="GPL-3"

SLOT="0"

KEYWORDS="-* amd64"

IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

S=${WORKDIR}/${MYP}
