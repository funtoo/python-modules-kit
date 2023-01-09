# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_8+ pypy3 )

inherit distutils-r1

DESCRIPTION="Sphinx extension to convert a Python list into a generated table"
HOMEPAGE="https://github.com/chintal/sphinxcontrib-documentedlist"
SRC_URI="https://files.pythonhosted.org/packages/54/5b/7ad0611265968605e2d188376b2ee729716d781d5e9b184bb559180b29b2/sphinxcontrib-documentedlist-0.6.tar.gz -> sphinxcontrib-documentedlist-0.6.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="
	dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]
	dev-python/sphinx[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"

python_install_all() {
	distutils-r1_python_install_all
	find "${ED}" -name '*.pth' -delete || die
}