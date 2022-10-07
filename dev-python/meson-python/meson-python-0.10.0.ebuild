# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/FFY00/mesonpy https://pypi.org/project/meson-python/"
SRC_URI="https://files.pythonhosted.org/packages/ee/96/5143db2524a4400db85f9ab5c11a1cc853b6770c316ecc81798877144c15/meson_python-0.10.0.tar.gz -> meson_python-0.10.0.tar.gz
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
S="${WORKDIR}/meson-python-0.10.0"