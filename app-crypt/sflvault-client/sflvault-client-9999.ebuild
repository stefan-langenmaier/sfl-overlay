# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=6

PYTHON_COMPAT=( python2_7 )
inherit eutils distutils-r1 git-r3

EGIT_REPO_URI="https://github.com/savoirfairelinux/sflvault"
EGIT_BRANCH="develop"
SRC_URI=""
KEYWORDS="~amd64"

DESCRIPTION="SFLvault is a networked credentials store and authentication manager developed by Savoir-faire Linux"
HOMEPAGE="http://www.sflvault.org/"
LICENSE="GPL-3"

SLOT="0"
IUSE=""
RESTRICT=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
	dev-python/pycrypto
	dev-python/decorator
	>=dev-python/urwid-0.9.8.1
	>=dev-python/pexpect-2.3
	<dev-python/keyring-8"

src_prepare() {
	# the code for this ebuild is in the client folder
	S="${S}/client"

	eapply_user
}
