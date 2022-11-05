# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://paramiko.org https://pypi.org/project/paramiko/"
SRC_URI="https://files.pythonhosted.org/packages/98/75/e78ddbe671a4a59514b59bc6a321263118e4ac3fe88175dd784d1a47a00f/paramiko-2.12.0.tar.gz -> paramiko-2.12.0.tar.gz
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
S="${WORKDIR}/paramiko-2.12.0"

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
