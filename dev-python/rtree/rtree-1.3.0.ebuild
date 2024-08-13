# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="R-Tree spatial index for Python GIS"
HOMEPAGE="None https://pypi.org/project/Rtree/"
SRC_URI="https://files.pythonhosted.org/packages/6e/79/44fdc619e87bd7b5388f76418719bd8b99de5565475f74a2e0d82b401062/rtree-1.3.0.tar.gz -> rtree-1.3.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/Rtree-1.3.0"