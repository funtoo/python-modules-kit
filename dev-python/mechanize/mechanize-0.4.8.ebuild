# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Stateful programmatic web browsing in Python"
HOMEPAGE="https://github.com/python-mechanize/mechanize"
SRC_URI="https://files.pythonhosted.org/packages/b0/02/6c3d393c72db98e8732ec85020a525494fdbb076c7511e3d331188a48154/mechanize-0.4.8.tar.gz"

LICENSE="|| ( BSD ZPL )"
SLOT="0"
KEYWORDS="*"
IUSE="doc"

DEPEND=">=dev-python/html5lib-0.999999999[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

python_test() {
	"${PYTHON}" run_tests.py || die
}