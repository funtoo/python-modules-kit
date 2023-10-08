# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Fast, simple object-to-object and broadcast signaling"
HOMEPAGE="https://pythonhosted.org/blinker/ https://pypi.org/project/blinker/"
SRC_URI="https://files.pythonhosted.org/packages/ea/96/ed1420a974540da7419094f2553bc198c454cee5f72576e7c7629dd12d6e/blinker-1.6.3.tar.gz -> blinker-1.6.3.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="doc"

distutils_enable_tests nose

python_install_all() {
	use doc && HTML_DOCS=( docs/html/. )
	distutils-r1_python_install_all
}