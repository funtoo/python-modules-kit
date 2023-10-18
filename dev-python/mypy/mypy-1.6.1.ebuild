# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Optional static typing for Python"
HOMEPAGE="https://www.mypy-lang.org/ https://pypi.org/project/mypy/"
SRC_URI="https://files.pythonhosted.org/packages/50/f8/0a8d4d8781b41b445534bc4f9210b7793bf0ab52aacfd06ebd2699663e2c/mypy-1.6.1.tar.gz -> mypy-1.6.1.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/psutil[${PYTHON_USEDEP}]
	>=dev-python/mypy_extensions-0.4.3[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '>=dev-python/typed-ast-1.4.0[${PYTHON_USEDEP}]' python3_7)"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/mypy-1.6.1"