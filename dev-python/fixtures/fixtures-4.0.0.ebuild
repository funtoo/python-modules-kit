# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Fixtures, reusable state for writing clean tests and more"
HOMEPAGE="https://launchpad.net/python-fixtures https://pypi.org/project/fixtures/"
SRC_URI="https://files.pythonhosted.org/packages/64/e0/45cdd4842cf2e97e6e43acc57914ca562c2624af562837d2aefbeabb44a2/fixtures-4.0.0.tar.gz"

LICENSE="|| ( Apache-2.0 BSD )"
SLOT="0"
KEYWORDS="*"
IUSE="test"

# nose not listed but provides coverage output of tests
# run of test files by python lacks any output except on fail
RDEPEND="
	>=dev-python/pbr-0.11[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	>=dev-python/testtools-0.9.22[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	test? ( dev-python/mock[${PYTHON_USEDEP}] )"
#DISTUTILS_IN_SOURCE_BUILD=1

python_test() {
	emake check
}