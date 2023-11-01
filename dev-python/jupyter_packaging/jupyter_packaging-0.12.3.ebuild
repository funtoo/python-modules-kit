# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Jupyter Packaging Utilities."
HOMEPAGE=" https://pypi.org/project/jupyter-packaging/"
SRC_URI="https://files.pythonhosted.org/packages/25/c5/b0e154e6403c6790bb1e66acddf9787296a8196f5b14f4bb9e4c92b6734e/jupyter_packaging-0.12.3.tar.gz -> jupyter_packaging-0.12.3.tar.gz"

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
S="${WORKDIR}/jupyter_packaging-0.12.3"