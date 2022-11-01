# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="a library for rendering \"readme\" descriptions for Warehouse"
HOMEPAGE="https://github.com/pypa/readme_renderer https://pypi.org/project/readme_renderer/"
SRC_URI="https://files.pythonhosted.org/packages/81/c3/d20152fcd1986117b898f66928938f329d0c91ddc47f081c58e64e0f51dc/readme_renderer-37.3.tar.gz -> readme_renderer-37.3.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	>=dev-python/bleach-2.1.0[${PYTHON_USEDEP}]
	>=dev-python/docutils-0.13.1[${PYTHON_USEDEP}]
	>=dev-python/pygments-2.5.2[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/mock[${PYTHON_USEDEP}] )
"

DOCS=( README.rst )

distutils_enable_tests pytest