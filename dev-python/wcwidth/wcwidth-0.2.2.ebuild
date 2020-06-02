# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Measures number of Terminal column cells of wide-character codes"
HOMEPAGE="https://pypi.org/project/wcwidth/ https://github.com/jquast/wcwidth"
SRC_URI="https://files.pythonhosted.org/packages/bd/93/396f82ece739ca551c2c1c74938a016c44263173d3eb83693ae9dbc33557/wcwidth-0.2.2.tar.gz -> wcwidth-0.2.2.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

distutils_enable_tests pytest