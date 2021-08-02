# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="A sphinx extension for embedding block diagrams using blockdiag"

HOMEPAGE="https://github.com/blockdiag/sphinxcontrib-blockdiag"

SRC_URI="https://files.pythonhosted.org/packages/ad/7a/d9e57607522d414e1a089f8da982750ded0e100b1bfc210b17f0fe98db47/sphinxcontrib-blockdiag-2.0.0.tar.gz"

LICENSE="BSD"

SLOT="0"

KEYWORDS="*"

IUSE=""

DEPEND="
	dev-python/sphinx[${PYTHON_USEDEP}]
	>=dev-python/blockdiag-1.5.0[${PYTHON_USEDEP}]
"

RDEPEND="${DEPEND}
	dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]"

python_prepare_all() {
	sed -i -e /build-base/d setup.cfg || die
	distutils-r1_python_prepare_all
}

python_install_all() {
	distutils-r1_python_install_all
	find "${ED}" -name '*.pth' -delete || die
}