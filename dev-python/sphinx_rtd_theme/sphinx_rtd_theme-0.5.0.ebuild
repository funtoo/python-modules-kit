# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1

DESCRIPTION="ReadTheDocs.org theme for Sphinx"
HOMEPAGE="https://github.com/snide/sphinx_rtd_theme/"
SRC_URI="https://files.pythonhosted.org/packages/59/cd/1eb84d8b11ecac97a85c42199bb5566eee0bb946b27138f28cbea1d729e7/sphinx_rtd_theme-0.5.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

pkg_setup() {
	export CI=1
}

PDEPEND="dev-python/sphinx[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"