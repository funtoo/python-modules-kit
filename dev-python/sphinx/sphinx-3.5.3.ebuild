# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1

DESCRIPTION="Python documentation generator"
HOMEPAGE="http://www.sphinx-doc.org/"
SRC_URI="https://files.pythonhosted.org/packages/47/8c/b8edf8b293613057355d45365201d9e98560a484a9c177934a6f25115826/Sphinx-3.5.3.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE="doc latex"

RDEPEND="
	<dev-python/alabaster-0.8[${PYTHON_USEDEP}]
	dev-python/Babel[${PYTHON_USEDEP}]
	dev-python/docutils[${PYTHON_USEDEP}]
	dev-python/imagesize[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]
	dev-python/pygments[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/snowballstemmer[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-applehelp[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-devhelp[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-jsmath[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-htmlhelp[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-serializinghtml[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-qthelp[${PYTHON_USEDEP}]
	dev-python/sphinx_rtd_theme[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	latex? (
		dev-texlive/texlive-latexextra
		dev-texlive/texlive-luatex
		app-text/dvipng
	)"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/${P^}"

python_compile_all() {
	if use doc; then
		esetup.py build_sphinx
		HTML_DOCS=( "${BUILD_DIR}"/sphinx/html/. )
	fi
}