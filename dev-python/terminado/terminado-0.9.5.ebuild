# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=pyproject.toml
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Terminals served to term.js using Tornado websockets"
HOMEPAGE="https://pypi.org/project/terminado/ https://github.com/jupyter/terminado"
SRC_URI="https://files.pythonhosted.org/packages/e6/7d/509f24644348856e2eff7328ad7294127d85eccbb4ac049125ff02caf979/terminado-0.9.5.tar.gz"

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