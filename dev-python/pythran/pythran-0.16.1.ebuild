# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Ahead of Time compiler for numeric kernels"
HOMEPAGE="None https://pypi.org/project/pythran/"
SRC_URI="https://files.pythonhosted.org/packages/73/32/f892675c5009cd4c1895ded3d6153476bf00adb5ad1634d03635620881f5/pythran-0.16.1.tar.gz -> pythran-0.16.1.tar.gz"

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
S="${WORKDIR}/pythran-0.16.1"