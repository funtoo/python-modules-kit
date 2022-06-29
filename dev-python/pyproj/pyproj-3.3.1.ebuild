# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to the PROJ library"
HOMEPAGE="https://github.com/pyproj4/pyproj https://pypi.org/project/pyproj/"
SRC_URI="https://files.pythonhosted.org/packages/e3/4d/348402c2fb0d8a8e85a88b8babc6f4efaae9692b7524aedce5fddbef3baf/pyproj-3.3.1.tar.gz
"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	>=sci-libs/proj-6.2.0:="

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyproj-3.3.1"

distutils_enable_sphinx docs dev-python/sphinx_rtd_theme
