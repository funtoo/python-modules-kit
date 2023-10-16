# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="R-Tree spatial index for Python GIS"
HOMEPAGE=" https://pypi.org/project/Rtree/"
SRC_URI="https://files.pythonhosted.org/packages/98/37/5dd86f8be05dbf6ab1be9817958ecd2dafc6913639a511ad6f71365f1c3e/Rtree-1.1.0.tar.gz -> Rtree-1.1.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/Rtree-1.1.0"