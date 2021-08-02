# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Stateful programmatic web browsing in Python"
HOMEPAGE="https://github.com/python-mechanize/mechanize"
SRC_URI="https://files.pythonhosted.org/packages/77/1b/7e4b644108e4e99b136e52c6aae34873fcd267e3d2489f3bd2cff8655a59/mechanize-0.4.5.tar.gz"

LICENSE="|| ( BSD ZPL )"
SLOT="0"
KEYWORDS="*"
IUSE="doc"

DEPEND=">=dev-python/html5lib-0.999999999[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

python_test() {
	"${PYTHON}" run_tests.py || die
}