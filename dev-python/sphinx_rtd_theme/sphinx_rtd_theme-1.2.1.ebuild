# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="ReadTheDocs.org theme for Sphinx"
HOMEPAGE="https://github.com/snide/sphinx_rtd_theme/"
SRC_URI="https://files.pythonhosted.org/packages/9a/79/0b25a26c2103457553530c45d0f5408e3ca19c02274f170d86607d0b805c/sphinx_rtd_theme-1.2.1.tar.gz -> sphinx_rtd_theme-1.2.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

pkg_setup() {
	export CI=1
}

PDEPEND="dev-python/sphinx[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"