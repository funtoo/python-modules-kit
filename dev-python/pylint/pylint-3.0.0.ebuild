# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python code static checker"
HOMEPAGE=" https://pypi.org/project/pylint/"
SRC_URI="https://files.pythonhosted.org/packages/aa/f7/325b71d78faf9fcf1c246669a2448356fe3d7d69c5f93d48f41cc241a6bb/pylint-3.0.0.tar.gz -> pylint-3.0.0.tar.gz
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
S="${WORKDIR}/pylint-3.0.0"