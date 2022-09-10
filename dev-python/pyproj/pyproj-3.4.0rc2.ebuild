# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pyproj4/pyproj https://pypi.org/project/pyproj/"
SRC_URI="https://files.pythonhosted.org/packages/8c/04/ed547f2788eac732640175076abebcb0977164a5fa791b3c805d3119ab6e/pyproj-3.4.0rc2.tar.gz -> pyproj-3.4.0rc2.tar.gz
"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	>=sci-libs/proj-6.2.0:="

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyproj-3.4.0rc2"

distutils_enable_sphinx docs dev-python/sphinx_rtd_theme
