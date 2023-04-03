# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Fast, simple object-to-object and broadcast signaling"
HOMEPAGE="https://pythonhosted.org/blinker/ https://pypi.org/project/blinker/"
SRC_URI="https://files.pythonhosted.org/packages/a4/04/16dd209be88bcda71710fab1344433031fc7d793925ca06bfd27986db8b3/blinker-1.6.tar.gz -> blinker-1.6.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="doc"

distutils_enable_tests nose

python_install_all() {
	use doc && HTML_DOCS=( docs/html/. )
	distutils-r1_python_install_all
}