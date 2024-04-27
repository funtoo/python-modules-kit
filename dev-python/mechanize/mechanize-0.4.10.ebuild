# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Stateful programmatic web browsing in Python"
HOMEPAGE="https://github.com/python-mechanize/mechanize"
SRC_URI="https://files.pythonhosted.org/packages/f5/ce/35d356959be6d8cdd5a3c8b6ea74548281ea9ae71c4d4538c076c4c986a2/mechanize-0.4.10.tar.gz -> mechanize-0.4.10.tar.gz"

LICENSE="|| ( BSD ZPL )"
SLOT="0"
KEYWORDS="*"
IUSE="doc"

DEPEND=">=dev-python/html5lib-0.999999999[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

python_test() {
	"${PYTHON}" run_tests.py || die
}