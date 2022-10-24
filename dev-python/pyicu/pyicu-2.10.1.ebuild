# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://gitlab.pyicu.org/main/pyicu https://pypi.org/project/PyICU/"
SRC_URI="https://files.pythonhosted.org/packages/19/47/ca871546c4e6f69abc11fea271cfce7489c6f999a647f642ceb78df90831/PyICU-2.10.1.tar.gz -> PyICU-2.10.1.tar.gz
"

DEPEND=""
RDEPEND="
	dev-libs/icu:="
BDEPEND="
	test? ( dev-python/six[${PYTHON_USEDEP}] )"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyicu-2.10.1"

post_src_unpack() {
	default
	mv ${WORKDIR}/PyICU-* ${S} || die
}
DOCS=( CHANGES CREDITS README.md )
distutils_enable_tests pytest
