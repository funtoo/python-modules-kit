# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Ahead of Time compiler for numeric kernels"
HOMEPAGE="https://github.com/serge-sans-paille/pythran https://pypi.org/project/pythran/"
SRC_URI="https://files.pythonhosted.org/packages/8d/d8/b27e8dc3f3a03dcd317d40d9df0ae07ebbd85444585973ceba07716934d0/pythran-0.13.1.tar.gz -> pythran-0.13.1.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/beniget[${PYTHON_USEDEP}]
	dev-python/numpy[${PYTHON_USEDEP}]
	dev-python/gast[${PYTHON_USEDEP}]
	dev-python/ply[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/pythran-0.13.1"