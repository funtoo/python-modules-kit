# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Manipulation and analysis of geometric objects"
HOMEPAGE=" https://pypi.org/project/shapely/"
SRC_URI="https://files.pythonhosted.org/packages/01/c0/ef2c5eff1e8381710e211a063d0aa3e7215cea9e6fd8c31e75bf5f93df85/shapely-2.0.2.tar.gz -> shapely-2.0.2.tar.gz"

DEPEND="
	>=sci-libs/geos-3.5
	dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/numpy[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/shapely-2.0.2"