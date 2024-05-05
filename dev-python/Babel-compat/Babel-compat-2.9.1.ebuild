# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Internationalization utilities"
HOMEPAGE="https://babel.pocoo.org/ https://pypi.org/project/Babel/"
SRC_URI="https://files.pythonhosted.org/packages/17/e6/ec9aa6ac3d00c383a5731cc97ed7c619d3996232c977bb8326bcbb6c687e/Babel-2.9.1.tar.gz -> Babel-2.9.1.tar.gz"

DEPEND=""
RDEPEND="!<dev-python/Babel-2.10 dev-python/pytz[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/babel-2.9.1"

post_src_install() {
	rm -rf ${D}/usr/bin
}