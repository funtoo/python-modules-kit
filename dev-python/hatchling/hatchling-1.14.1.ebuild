# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/hatchling/"
SRC_URI="https://files.pythonhosted.org/packages/aa/d2/613087e785e4631a96d8b53688e28d5cd55a67caee9000e6408c0c58bcd2/hatchling-1.14.1.tar.gz -> hatchling-1.14.1.tar.gz
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
S="${WORKDIR}/hatchling-1.14.1"