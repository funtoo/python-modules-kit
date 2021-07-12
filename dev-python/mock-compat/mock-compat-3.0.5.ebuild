# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Stand-alone version of unittest.mock included in py3.3+"
HOMEPAGE="https://github.com/testing-cabal/mock"
SRC_URI="https://files.pythonhosted.org/packages/2e/ab/4fe657d78b270aa6a32f027849513b829b41b0f28d9d8d7f8c3d29ea559a/mock-3.0.5.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/mock-3.0.5 >=dev-python/six-1.9[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/mock-3.0.5"

post_src_install() {
	rm -rf ${D}/usr/bin
}