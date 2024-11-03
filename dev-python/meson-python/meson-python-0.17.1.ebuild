# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Meson Python build backend (PEP 517)"
HOMEPAGE="None https://pypi.org/project/meson-python/"
SRC_URI="https://files.pythonhosted.org/packages/67/66/91d242ea8dd1729addd36069318ba2cd03874872764f316c3bb51b633ed2/meson_python-0.17.1.tar.gz -> meson_python-0.17.1.tar.gz
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
S="${WORKDIR}/meson_python-0.17.1"