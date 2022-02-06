# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Allow a different format in dosctrings for better clarity"
HOMEPAGE="https://sphinxcontrib-napoleon.readthedocs.io/"
SRC_URI="https://files.pythonhosted.org/packages/fa/eb/ad89500f4cee83187596e07f43ad561f293e8e6e96996005c3319653b89f/sphinxcontrib-napoleon-0.7.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="
	>=dev-python/sphinx-1.2[${PYTHON_USEDEP}]
	<dev-python/sphinx-1.33[${PYTHON_USEDEP}]
	dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]
"

DEPEND="
	dev-python/pockets[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"

python_prepare_all() {
	distutils-r1_python_prepare_all
	sed -i "s:packages=find_packages(),:packages=["sphinxcontrib"],:g" "${S}/setup.py"
}

python_install_all() {
	distutils-r1_python_install_all
	find "${ED}" -name '*.pth' -delete || die
}