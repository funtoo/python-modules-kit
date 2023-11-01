# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Extensions to the Python standard library unit testing framework"
HOMEPAGE="https://github.com/testing-cabal/testtools https://pypi.org/project/testtools/"
SRC_URI="https://files.pythonhosted.org/packages/11/9a/26b2f192024c4abcf702750ce7f4eb4cad305d8aad9482d9b5f3760118c7/testtools-2.4.0.tar.gz -> testtools-2.4.0.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/pbr[${PYTHON_USEDEP}]"
RDEPEND="!<dev-python/testtools-2.5.0-r1 dev-python/pbr[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/testtools-2.4.0"

post_src_install() {
	rm -rf ${D}/usr/bin
}