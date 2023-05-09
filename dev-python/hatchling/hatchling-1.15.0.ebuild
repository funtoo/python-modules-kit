# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/hatchling/"
SRC_URI="https://files.pythonhosted.org/packages/91/a1/4def6730ad9a7ac6f201589c3389207b569d83829a0c38cea0ed14045549/hatchling-1.15.0.tar.gz -> hatchling-1.15.0.tar.gz
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
S="${WORKDIR}/hatchling-1.15.0"