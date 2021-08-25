# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Alternative regular expression module, to replace re."
HOMEPAGE="https://bitbucket.org/mrabarnett/mrab-regex https://pypi.org/project/regex/"
SRC_URI="https://files.pythonhosted.org/packages/61/50/ab503a22bcca35ffccfeab0d9bed59a10e78459bec9cf46709a2417e4cc4/regex-2021.8.21.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE="doc"
RESTRICT="test"
SLOT="0"
LICENSE="Apache Software License"
KEYWORDS="*"

S="${WORKDIR}/regex-2021.8.21"

python_install_all() {
	use doc && local HTML_DOCS=( docs/Features.html )
	local DOCS=( README.rst docs/*.rst )
	distutils-r1_python_install_all
}
