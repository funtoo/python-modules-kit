# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/jupyter-packaging/"
SRC_URI="https://files.pythonhosted.org/packages/ee/75/f0262da6134c6364c9246d20fba36f86b69e8ba7eed6ec42c1520658b9cf/jupyter_packaging-0.12.2.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/deprecation[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/tomlkit[${PYTHON_USEDEP}]
	dev-python/wheel[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/jupyter_packaging-0.12.2"