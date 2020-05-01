# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Sphinx websupport extension"
HOMEPAGE="http://www.sphinx-doc.org"
SRC_URI="https://files.pythonhosted.org/packages/91/f9/f59a951aa1eaa1be31b72932ea3118d05e8750d82c462d11687c6253c294/sphinxcontrib-websupport-1.2.2.tar.gz -> sphinxcontrib-websupport-1.2.2.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND="
	>=dev-python/sqlalchemy-0.9[${PYTHON_USEDEP}]
	>=dev-python/whoosh-2.0[${PYTHON_USEDEP}]
	>=dev-python/six-1.5[${PYTHON_USEDEP}]
	dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]"
# avoid circular dependency with sphinx
PDEPEND="
	>=dev-python/sphinx-1.5.3[${PYTHON_USEDEP}]"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		${RDEPEND}
		${PDEPEND}
		dev-python/pytest[${PYTHON_USEDEP}]
		dev-python/mock[${PYTHON_USEDEP}]
	)"

python_install_all() {
	distutils-r1_python_install_all
	find "${ED}" -name '*.pth' -delete || die
}

src_test() {
	cd tests || die
	distutils-r1_src_test
}

python_test() {
	pytest -vv || die "Tests fail with ${EPYTHON}"
}