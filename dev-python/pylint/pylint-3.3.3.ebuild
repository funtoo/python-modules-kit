# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python code static checker"
HOMEPAGE="None https://pypi.org/project/pylint/"
SRC_URI="https://files.pythonhosted.org/packages/17/fd/e9a739afac274a39596bbe562e9d966db6f3917fdb2bd7322ffc56da0ba2/pylint-3.3.3.tar.gz -> pylint-3.3.3.tar.gz
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
S="${WORKDIR}/pylint-3.3.3"