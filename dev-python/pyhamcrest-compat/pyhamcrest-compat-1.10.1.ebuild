# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Hamcrest framework for matcher objects"
HOMEPAGE="https://github.com/hamcrest/PyHamcrest"
SRC_URI="https://files.pythonhosted.org/packages/d9/6b/fb2e701f25303c620149923d98085c6d7b052d112044764cbf00cc07469e/PyHamcrest-1.10.1.tar.gz -> PyHamcrest-1.10.1.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/pyhamcrest-2.0.0 "
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/pyhamcrest-1.10.1"

post_src_install() {
	rm -rf ${D}/usr/bin
}