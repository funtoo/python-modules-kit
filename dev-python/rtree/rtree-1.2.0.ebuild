# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="R-Tree spatial index for Python GIS"
HOMEPAGE=" https://pypi.org/project/Rtree/"
SRC_URI="https://files.pythonhosted.org/packages/fe/40/55b099ab3b729d6a86103e2619ba904ab1138d0729a7c585ae5e0a722f97/Rtree-1.2.0.tar.gz -> Rtree-1.2.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/Rtree-1.2.0"