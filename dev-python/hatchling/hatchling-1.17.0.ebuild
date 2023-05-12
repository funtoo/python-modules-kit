# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Modern, extensible Python build backend"
HOMEPAGE=" https://pypi.org/project/hatchling/"
SRC_URI="https://files.pythonhosted.org/packages/d4/de/983fb0275c7361345b0b4916f88048cae9ce38aa8e6099af2e990d61e304/hatchling-1.17.0.tar.gz -> hatchling-1.17.0.tar.gz
"

DEPEND="
	dev-python/pathspec[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/pluggy[${PYTHON_USEDEP}]
	dev-python/installer[${PYTHON_USEDEP}]
	dev-python/trove-classifiers[${PYTHON_USEDEP}]"
RDEPEND="
	${DEPEND}
	dev-python/editables[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/hatchling-1.17.0"