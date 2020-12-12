# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Cheroot is the high-performance, pure-Python HTTP server used by CherryPy."
HOMEPAGE="https://cherrypy.org/ https://pypi.org/project/Cheroot/ https://github.com/cherrypy/cheroot"
SRC_URI="https://files.pythonhosted.org/packages/07/aa/62717ac01e8a4258a6731cbc6b85e477e6b46a512e5d074b296fa6f0b5dd/cheroot-8.5.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
RESTRICT="test"

RDEPEND="
	>=dev-python/six-1.11.0[${PYTHON_USEDEP}]
	>=dev-python/more-itertools-2.6[${PYTHON_USEDEP}]
	dev-python/jaraco-functools[${PYTHON_USEDEP}]
"
DEPEND="
	${RDEPEND}
	>=dev-python/setuptools-34.4.0[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-1.15.0[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm_git_archive-1.0[${PYTHON_USEDEP}]
"