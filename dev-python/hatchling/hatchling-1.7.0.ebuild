# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/hatchling/"
SRC_URI="https://files.pythonhosted.org/packages/b6/f8/1ed20a4fca136176463684d0e4627b7ebce050c3998985a644877e2cf900/hatchling-1.7.0.tar.gz -> hatchling-1.7.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/editables[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/pathspec[${PYTHON_USEDEP}]
	dev-python/pluggy[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/hatchling-1.7.0"