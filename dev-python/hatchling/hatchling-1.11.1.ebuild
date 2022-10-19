# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/hatchling/"
SRC_URI="https://files.pythonhosted.org/packages/24/20/3e21d2bc57229822ac9fb9b314d7892c16f829f34a0eb247c55fc11e09a8/hatchling-1.11.1.tar.gz -> hatchling-1.11.1.tar.gz
"

DEPEND="
	dev-python/pathspec[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/pluggy[${PYTHON_USEDEP}]
	dev-python/installer[${PYTHON_USEDEP}]"
RDEPEND="
	${DEPEND}
	dev-python/editables[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/hatchling-1.11.1"