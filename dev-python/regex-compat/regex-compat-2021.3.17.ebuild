# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Alternative regular expression module, to replace re."
HOMEPAGE="https://bitbucket.org/mrabarnett/mrab-regex https://pypi.org/project/regex/"
SRC_URI="https://files.pythonhosted.org/packages/84/cb/e7792d2c52f61a686ce0fabe79b3674c41238d07cd35c79b4062e9a807f6/regex-2021.3.17.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/regex-2021.4.4 "
IUSE="doc"
RESTRICT="test"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/regex-2021.3.17"

python_install_all() {
	use doc && local HTML_DOCS=( docs/Features.html )
	local DOCS=( README.rst docs/*.rst )
	distutils-r1_python_install_all
}


post_src_install() {
	rm -rf ${D}/usr/bin
}