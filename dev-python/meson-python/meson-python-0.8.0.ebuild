# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/FFY00/mesonpy https://pypi.org/project/meson-python/"
SRC_URI="https://files.pythonhosted.org/packages/c0/15/55128a107245f2af041063974e6bb93885bcd2b4f95ad8e20b51ec3dbbeb/meson_python-0.8.0.tar.gz -> meson_python-0.8.0.tar.gz
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
S="${WORKDIR}/meson-python-0.8.0"