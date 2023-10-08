# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python code static checker"
HOMEPAGE=" https://pypi.org/project/pylint/"
SRC_URI="https://files.pythonhosted.org/packages/a3/e9/21f9ce3e4b81eef011be070a29f8a5c193e2488ed8713a898baa4e8b3362/pylint-2.17.7.tar.gz -> pylint-2.17.7.tar.gz
"

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
S="${WORKDIR}/pylint-2.17.7"