# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="SSH2 protocol library"
HOMEPAGE="https://paramiko.org https://pypi.org/project/paramiko/"
SRC_URI="https://files.pythonhosted.org/packages/e8/53/e614a5b7bcc658d20e6eff6ae068863becb06bf362c2f135f5c290d8e6a2/paramiko-3.1.0.tar.gz -> paramiko-3.1.0.tar.gz
"

DEPEND=""
RDEPEND="
	>=dev-python/bcrypt-3.1.3[${PYTHON_USEDEP}]
	>=dev-python/cryptography-2.5[${PYTHON_USEDEP}]
	>=dev-python/pynacl-1.0.1[${PYTHON_USEDEP}]
	>=dev-python/pyasn1-0.1.7[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"

IUSE="examples server"
RESTRICT="test"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/paramiko-3.1.0"

src_prepare() {
	local PATCHES=( )
	if ! use server; then
		PATCHES+=( "${FILESDIR}/${PN}-2.4.2-disable-server.patch" )
	fi
	distutils-r1_src_prepare
}
python_install_all() {
	distutils-r1_python_install_all
	if use examples; then
		docinto examples
		dodoc -r demos/*
	fi
}
