# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Magnificent app which corrects your previous console command"
HOMEPAGE="https://github.com/nvbn/thefuck"
SRC_URI="https://files.pythonhosted.org/packages/ac/d0/0c256afd3ba1d05882154d16aa0685018f21c60a6769a496558da7d9d8f1/thefuck-3.32.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/psutil[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/decorator[${PYTHON_USEDEP}]
	dev-python/colorama[${PYTHON_USEDEP}]
	dev-python/pyte[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/thefuck-3.32"

python_prepare_all() {
	sed -i -e "/import pip/s/^/#/" -e "/pip.__version__/,+3 s/^/#/" setup.py || die
	distutils-r1_python_prepare_all
}
