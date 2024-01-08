# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Measures number of Terminal column cells of wide-character codes"
HOMEPAGE="https://pypi.org/project/wcwidth/ https://github.com/jquast/wcwidth"
SRC_URI="https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz -> wcwidth-0.2.13.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

distutils_enable_tests pytest