# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Curses-based user interface library for Python"
HOMEPAGE="http://urwid.org/ https://pypi.org/project/urwid/ https://github.com/urwid/urwid/"
SRC_URI="https://files.pythonhosted.org/packages/93/6c/f40b1ffc0f1b81a51ebc66615d1177a590ac23d6e300921a047a20f5dbd4/urwid-2.6.4.tar.gz -> urwid-2.6.4.tar.gz"

DEPEND=""
IUSE="examples"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/urwid-2.6.4"

distutils_enable_sphinx docs
python_install_all() {
	use examples && dodoc -r examples
	distutils-r1_python_install_all
}
