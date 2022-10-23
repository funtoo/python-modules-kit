# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://gitlab.pyicu.org/main/pyicu https://pypi.org/project/PyICU/"
SRC_URI="https://files.pythonhosted.org/packages/bc/d5/32d875a6830a35d6efcabd6b62414f6df6ffbf16154ab8a4159864ea83c0/PyICU-2.10.tar.gz -> PyICU-2.10.tar.gz
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
S="${WORKDIR}/pyicu-2.10"

post_src_unpack() {
	default
	mv ${WORKDIR}/PyICU-* ${S} || die
}
DOCS=( CHANGES CREDITS README.md )
distutils_enable_tests pytest
