# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="ReadTheDocs.org theme for Sphinx"
HOMEPAGE="https://github.com/snide/sphinx_rtd_theme/"
SRC_URI="https://files.pythonhosted.org/packages/32/88/9a7fdcce940c9d2a1b22179e98b465218c2ed8a4f431d713d3925e597e0f/sphinx_rtd_theme-1.1.0.tar.gz -> sphinx_rtd_theme-1.1.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

pkg_setup() {
	export CI=1
}

PDEPEND="dev-python/sphinx[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"