# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Sphinx Doxygen renderer"
HOMEPAGE="https://github.com/michaeljones/breathe https://pypi.org/project/breathe/"
SRC_URI="https://files.pythonhosted.org/packages/e3/1e/3c973e2f8483a0237cd7240d9d4e06232234fd9b0646c86bb3749897a502/breathe-4.33.1.tar.gz
"

DEPEND=""
RDEPEND="
	app-doc/doxygen
	dev-texlive/texlive-bibtexextra
	dev-texlive/texlive-fontsextra
	dev-texlive/texlive-fontutils
	dev-texlive/texlive-latex
	dev-texlive/texlive-latexextra
	dev-python/docutils[${PYTHON_USEDEP}]
	>=dev-python/sphinx-3.0.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/breathe-4.33.1"