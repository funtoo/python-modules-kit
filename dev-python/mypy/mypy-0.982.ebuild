# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://www.mypy-lang.org/ https://pypi.org/project/mypy/"
SRC_URI="https://files.pythonhosted.org/packages/0d/75/a1ec1af4153f7b7ae825705ada667bf445418277153c76972ba0ad782bb9/mypy-0.982.tar.gz -> mypy-0.982.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/psutil[${PYTHON_USEDEP}]
	>=dev-python/mypy_extensions-0.4.3[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
	>=dev-python/typed-ast-1.4.0[${PYTHON_USEDEP}]
	' python3_7
	)"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/mypy-0.982"