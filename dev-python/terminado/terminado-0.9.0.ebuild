# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Terminals served to term.js using Tornado websockets"
HOMEPAGE="https://pypi.org/project/terminado/ https://github.com/jupyter/terminado"
SRC_URI="https://files.pythonhosted.org/packages/94/e7/e1144c90d474156000831d1781a184d267de23f620378c0d95cae8a1ef37/terminado-0.9.0.tar.gz"

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