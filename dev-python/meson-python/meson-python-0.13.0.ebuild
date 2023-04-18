# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/mesonbuild/meson-python https://pypi.org/project/meson-python/"
SRC_URI="https://files.pythonhosted.org/packages/51/d3/bc8450723bc987ea51a1bd6f6a43a60641406597ee4f12228d416709685d/meson_python-0.13.0.tar.gz -> meson_python-0.13.0.tar.gz
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
S="${WORKDIR}/meson-python-0.13.0"