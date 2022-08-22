# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="a library for rendering \"readme\" descriptions for Warehouse"
HOMEPAGE="https://github.com/pypa/readme_renderer https://pypi.org/project/readme_renderer/"
SRC_URI="https://files.pythonhosted.org/packages/5e/ce/932f615a88ab777f1424277bfdcfe9b6b686a60e5f83d896749571d8e7d9/readme_renderer-37.0.tar.gz -> readme_renderer-37.0.tar.gz"

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