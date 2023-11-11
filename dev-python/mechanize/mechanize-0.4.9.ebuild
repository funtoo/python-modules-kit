# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Stateful programmatic web browsing in Python"
HOMEPAGE="https://github.com/python-mechanize/mechanize"
SRC_URI="https://files.pythonhosted.org/packages/33/e6/bb760d200e895a9d1d2b8187d572726249e3c6fe8554388a20911ba30363/mechanize-0.4.9.tar.gz -> mechanize-0.4.9.tar.gz"

LICENSE="|| ( BSD ZPL )"
SLOT="0"
KEYWORDS="*"
IUSE="doc"

DEPEND=">=dev-python/html5lib-0.999999999[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

python_test() {
	"${PYTHON}" run_tests.py || die
}