# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Ahead of Time compiler for numeric kernels"
HOMEPAGE="None https://pypi.org/project/pythran/"
SRC_URI="https://files.pythonhosted.org/packages/b7/a8/a968d794934811bf0ef4ffb7f95efebdaea4b139b44d07c018ae88399592/pythran-0.16.0.tar.gz -> pythran-0.16.0.tar.gz"

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
S="${WORKDIR}/pythran-0.16.0"