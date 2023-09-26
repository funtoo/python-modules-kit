# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Python style guide checker"
HOMEPAGE="https://pycodestyle.pycqa.org/ https://pypi.org/project/pycodestyle/"
SRC_URI="https://files.pythonhosted.org/packages/06/6b/5ca0d12ef7dcf7d20dfa35287d02297f3e0f9e515da5183654c03a9636ce/pycodestyle-2.10.0.tar.gz -> pycodestyle-2.10.0.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/pycodestyle-2.11.0-r1 "
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pycodestyle-2.10.0"

post_src_install() {
	rm -rf ${D}/usr/bin
}