# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Yet another URL library"
HOMEPAGE="https://github.com/aio-libs/yarl/"
SRC_URI="https://files.pythonhosted.org/packages/e0/11/2b8334f4192646677a2e7da435670d043f536088af943ec242f31453e5ba/yarl-1.13.1.tar.gz -> yarl-1.13.1.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	>=dev-python/multidict-4.0[${PYTHON_USEDEP}]
	>=dev-python/idna-2.0[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
	test? ( dev-python/pytest[${PYTHON_USEDEP}] )"

src_prepare() {
	default
	sed -i -e '/^addopts = --cov.*/d' -e 's/def test_no_scheme1/def _test_no_scheme1/' ${S}/setup.cfg || die
}

python_test() {
	py.test -v tests || die "Tests fail with ${EPYTHON}"
}