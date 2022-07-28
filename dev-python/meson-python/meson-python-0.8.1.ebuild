# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/FFY00/mesonpy https://pypi.org/project/meson-python/"
SRC_URI="https://files.pythonhosted.org/packages/c3/94/957a04750188722d09ade6ae3731b115366177faee32ace175c3ca59358b/meson_python-0.8.1.tar.gz -> meson_python-0.8.1.tar.gz
"

DEPEND=""
RDEPEND="
	dev-util/patchelf
	dev-python/meson[${PYTHON_USEDEP}]
	dev-python/pyproject-metadata[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/meson-python-0.8.1"