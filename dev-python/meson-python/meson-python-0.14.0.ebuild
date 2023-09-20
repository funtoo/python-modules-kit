# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Meson Python build backend (PEP 517)"
HOMEPAGE="https://github.com/mesonbuild/meson-python https://pypi.org/project/meson-python/"
SRC_URI="https://files.pythonhosted.org/packages/38/a7/ddc350902a1b3b960db8d0e501f61468f925f994e0b4e6d696aeb6a75c00/meson_python-0.14.0.tar.gz -> meson_python-0.14.0.tar.gz
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
S="${WORKDIR}/meson_python-0.14.0"