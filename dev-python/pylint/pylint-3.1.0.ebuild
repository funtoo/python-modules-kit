# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python code static checker"
HOMEPAGE=" https://pypi.org/project/pylint/"
SRC_URI="https://files.pythonhosted.org/packages/35/1c/4a8135f77a4ec8c0a6dc1d4543dd6fee55b36bb8bf629e2bcce8a94763a9/pylint-3.1.0.tar.gz -> pylint-3.1.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/astroid[${PYTHON_USEDEP}]
	dev-python/isort[${PYTHON_USEDEP}]
	dev-python/mccabe[${PYTHON_USEDEP}]
	dev-python/tomlkit[${PYTHON_USEDEP}]
	doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )
	test? ( dev-python/pytest[${PYTHON_USEDEP}] )"
IUSE="doc test"
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="*"
S="${WORKDIR}/pylint-3.1.0"