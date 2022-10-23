# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://gitlab.pyicu.org/main/pyicu https://pypi.org/project/PyICU/"
SRC_URI="https://files.pythonhosted.org/packages/11/76/9256430e729ad0dd4675a15a7bf0555b9085d1bea36083b9a1b095602f23/PyICU-2.9.tar.gz -> PyICU-2.9.tar.gz
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
S="${WORKDIR}/pyicu-2.9"

post_src_unpack() {
	default
	mv ${WORKDIR}/PyICU-* ${S} || die
}
DOCS=( CHANGES CREDITS README.md )
distutils_enable_tests pytest
