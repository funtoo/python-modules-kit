# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Stateful programmatic web browsing in Python"
HOMEPAGE="https://github.com/python-mechanize/mechanize"
SRC_URI="https://files.pythonhosted.org/packages/b0/12/2226549e042be8f2f4dddd3b4a44973e7bacd229f857299f33bde3f77e9d/mechanize-0.4.7.tar.gz"

LICENSE="|| ( BSD ZPL )"
SLOT="0"
KEYWORDS="*"
IUSE="doc"

DEPEND=">=dev-python/html5lib-0.999999999[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

python_test() {
	"${PYTHON}" run_tests.py || die
}