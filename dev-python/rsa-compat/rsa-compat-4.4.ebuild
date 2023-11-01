# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Pure-Python RSA implementation"
HOMEPAGE="https://stuvel.eu/rsa https://pypi.org/project/rsa/"
SRC_URI="https://files.pythonhosted.org/packages/b1/ae/3e3103cedd233415984e1882e10490ada9e138f106f98e60b5c51aedc0f3/rsa-4.4.tar.gz -> rsa-4.4.tar.gz"

DEPEND=""
RDEPEND="!<dev-python/rsa-4.9 dev-python/pyasn1[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/rsa-4.4"

post_src_install() {
	rm -rf ${D}/usr/bin
}