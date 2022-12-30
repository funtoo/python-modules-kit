# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/Sphinx/"
SRC_URI="https://files.pythonhosted.org/packages/46/dd/afcd33ecf25b04b6b18bfd7cedf635875fbe9b06de28268e81ecede904eb/Sphinx-6.0.0.tar.gz -> Sphinx-6.0.0.tar.gz
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	latex? (
		dev-texlive/texlive-latexextra
		dev-texlive/texlive-luatex
		app-text/dvipng
	)
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
	>=dev-python/sphinxcontrib-htmlhelp-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/sphinxcontrib-serializinghtml-1.1.5[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-qthelp[${PYTHON_USEDEP}]
	dev-python/sphinx_rtd_theme[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	>=dev-python/importlib_metadata-4.4[${PYTHON_USEDEP}]"

IUSE="latex doc"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/Sphinx-6.0.0"

PATCHES=(
	"$FILESDIR"/sphinx-4.2.0-highlight-toggle.patch
)
python_compile_all() {
	if use doc; then
		esetup.py build_sphinx
		HTML_DOCS=( "${BUILD_DIR}"/sphinx/html/. )
	fi
}
