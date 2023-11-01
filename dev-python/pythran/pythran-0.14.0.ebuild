# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Ahead of Time compiler for numeric kernels"
HOMEPAGE="https://github.com/serge-sans-paille/pythran https://pypi.org/project/pythran/"
SRC_URI="https://files.pythonhosted.org/packages/2c/ab/a647b8cc3ac1aa07cde06875157696e4522958fb8363474bce21c302d4d8/pythran-0.14.0.tar.gz -> pythran-0.14.0.tar.gz"

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
S="${WORKDIR}/pythran-0.14.0"