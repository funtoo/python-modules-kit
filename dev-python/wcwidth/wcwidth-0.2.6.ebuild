# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Measures number of Terminal column cells of wide-character codes"
HOMEPAGE="https://pypi.org/project/wcwidth/ https://github.com/jquast/wcwidth"
SRC_URI="https://files.pythonhosted.org/packages/5e/5f/1e4bd82a9cc1f17b2c2361a2d876d4c38973a997003ba5eb400e8a932b6c/wcwidth-0.2.6.tar.gz -> wcwidth-0.2.6.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

distutils_enable_tests pytest