# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3_8+ pypy3 )

inherit distutils-r1

DESCRIPTION="Sphinx spelling extension"
HOMEPAGE="https://bitbucket.org/dhellmann/sphinxcontrib-spelling"
SRC_URI="https://files.pythonhosted.org/packages/63/05/15a96a670ef3f8b79e7299555a2f7407dac5b5501f20003d52ce21ffee24/sphinxcontrib-spelling-7.7.0.tar.gz -> sphinxcontrib-spelling-7.7.0.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="*"
IUSE="doc"

CDEPEND="
	dev-python/pbr[${PYTHON_USEDEP}]
	dev-python/pyenchant[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/sphinx[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )
"
RDEPEND="${CDEPEND}
		dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]
"

python_compile_all() {
	use doc && emake -C docs html
}

python_install_all() {
	use doc && local HTML_DOCS=( docs/build/html/. )
	distutils-r1_python_install_all
	find "${ED}" -name '*.pth' -delete || die
}