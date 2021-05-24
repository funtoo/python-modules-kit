# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to the PROJ library"
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/7c/1d/20ea3b603db61ccc60f45064a9e00ba2e6263f1de560e33306f6f3d42fcb/pyproj-3.1.0.tar.gz
"

DEPEND="
	>=sci-libs/proj-6.2.0:=
	dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	>=sci-libs/proj-6.2.0:="

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/pyproj-3.1.0"

distutils_enable_sphinx docs dev-python/sphinx_rtd_theme
