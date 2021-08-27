# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )
inherit distutils-r1

DESCRIPTION="Tools to manipulate font files"
HOMEPAGE="http://github.com/fonttools/fonttools https://pypi.org/project/fonttools/"
SRC_URI="https://files.pythonhosted.org/packages/15/10/c087a7e87346332e40ef24f2a18e3b288b0c0e8196c02e06f94ba4d964b7/fonttools-4.26.2.zip
"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND=">=dev-python/fs-2.4.9[${PYTHON_USEDEP}]"
BDEPEND="
	"${RDEPEND}""

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/fonttools-4.26.2"

src_configure() {
	DISTUTILS_ARGS=( --with-cython )
}
