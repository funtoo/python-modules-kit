# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://www.mypy-lang.org/ https://pypi.org/project/mypy/"
SRC_URI="https://files.pythonhosted.org/packages/1d/06/9a40050ef10f0e9ddfd667f29e98dd650db31612128e3e8925cda6621944/mypy-1.0.0.tar.gz -> mypy-1.0.0.tar.gz
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
S="${WORKDIR}/mypy-1.0.0"