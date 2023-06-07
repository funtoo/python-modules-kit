# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="ReadTheDocs.org theme for Sphinx"
HOMEPAGE="https://github.com/snide/sphinx_rtd_theme/"
SRC_URI="https://files.pythonhosted.org/packages/66/86/7b2c3d15f44cb3ea2e1c54481494121d755081aa57a8076de3fa2be4d587/sphinx_rtd_theme-1.2.2.tar.gz -> sphinx_rtd_theme-1.2.2.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

pkg_setup() {
	export CI=1
}

PDEPEND="dev-python/sphinx[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"