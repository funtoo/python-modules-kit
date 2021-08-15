# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Sphinx Doxygen renderer"
HOMEPAGE="https://github.com/michaeljones/breathe https://pypi.org/project/breathe/"
SRC_URI="https://files.pythonhosted.org/packages/95/76/0c9adb4b20082091a0236e558797455ce819b0d9db86570c9a01139c66e2/breathe-4.30.0.tar.gz
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

S="${WORKDIR}/breathe-4.30.0"