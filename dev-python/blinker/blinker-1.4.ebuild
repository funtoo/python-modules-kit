# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Fast, simple object-to-object and broadcast signaling"
HOMEPAGE="https://pythonhosted.org/blinker/ https://pypi.org/project/blinker/"
SRC_URI="https://files.pythonhosted.org/packages/1b/51/e2a9f3b757eb802f61dc1f2b09c8c99f6eb01cf06416c0671253536517b6/blinker-1.4.tar.gz -> blinker-1.4.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="doc"

distutils_enable_tests nose

python_install_all() {
	use doc && HTML_DOCS=( docs/html/. )
	distutils-r1_python_install_all
}