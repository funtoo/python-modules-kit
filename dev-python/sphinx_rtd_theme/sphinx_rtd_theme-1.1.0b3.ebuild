# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="ReadTheDocs.org theme for Sphinx"
HOMEPAGE="https://github.com/snide/sphinx_rtd_theme/"
SRC_URI="https://files.pythonhosted.org/packages/dd/aa/ab144f7209699a2ff1f3ea62015e4d04cb88538697d2605fce49951a6079/sphinx_rtd_theme-1.1.0b3.tar.gz -> sphinx_rtd_theme-1.1.0b3.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

pkg_setup() {
	export CI=1
}

PDEPEND="dev-python/sphinx[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"