# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=pyproject.toml
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Terminals served to term.js using Tornado websockets"
HOMEPAGE="https://pypi.org/project/terminado/ https://github.com/jupyter/terminado"
SRC_URI="https://files.pythonhosted.org/packages/a1/a3/6c792f3b2fcd8dd211752dc7105bd2986d49c4b8cbc35ef433f17b0bf178/terminado-0.10.0.tar.gz"

SLOT="0"
LICENSE="BSD-2"
KEYWORDS="*"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	dev-python/ptyprocess[${PYTHON_USEDEP}]
	>=www-servers/tornado-0.4[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	test? ( dev-python/pytest[${PYTHON_USEDEP}] )"

python_test() {
	py.test -v || die
}