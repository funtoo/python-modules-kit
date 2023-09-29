# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Measures number of Terminal column cells of wide-character codes"
HOMEPAGE="https://pypi.org/project/wcwidth/ https://github.com/jquast/wcwidth"
SRC_URI="https://files.pythonhosted.org/packages/7c/67/31b3c1411efeb4b95e0a1c63c263c07676c49f59375d31a21b11ff16f9dc/wcwidth-0.2.7.tar.gz -> wcwidth-0.2.7.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

distutils_enable_tests pytest