# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="Magnificent app which corrects your previous console command"
HOMEPAGE="https://github.com/nvbn/thefuck"
SRC_URI="https://files.pythonhosted.org/packages/46/ed/11176f81a85876f4016c18907d6e085862df464a76628b91b3e91f080c7e/thefuck-3.30.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/psutil[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/decorator[${PYTHON_USEDEP}]
	dev-python/colorama[${PYTHON_USEDEP}]
	dev-python/pyte[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/thefuck-3.30"

python_prepare_all() {
	sed -i -e "/import pip/s/^/#/" -e "/pip.__version__/,+3 s/^/#/" setup.py || die
	distutils-r1_python_prepare_all
}
