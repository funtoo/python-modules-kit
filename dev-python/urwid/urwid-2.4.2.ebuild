# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Curses-based user interface library for Python"
HOMEPAGE="http://urwid.org/ https://pypi.org/project/urwid/ https://github.com/urwid/urwid/"
SRC_URI="https://files.pythonhosted.org/packages/da/81/fb36613477f486f9c9d93cdf248f7df9874c791b37d4942203f200cc5ac7/urwid-2.4.2.tar.gz -> urwid-2.4.2.tar.gz"

DEPEND=""
IUSE="examples"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/urwid-2.4.2"

distutils_enable_sphinx docs
python_install_all() {
	use examples && dodoc -r examples
	distutils-r1_python_install_all
}
