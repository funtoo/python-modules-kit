# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )
inherit distutils-r1

DESCRIPTION="A Python module to deal with freedesktop.org specifications"
HOMEPAGE="https://freedesktop.org/wiki/Software/pyxdg https://cgit.freedesktop.org/xdg/pyxdg/"
# official mirror of the git repo
SRC_URI="https://files.pythonhosted.org/packages/6f/2e/2251b5ae2f003d865beef79c8fcd517e907ed6a69f58c32403cec3eba9b2/pyxdg-0.27.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="*"
IUSE="test"

DEPEND="
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
		x11-themes/hicolor-icon-theme
	)"

python_test() {
	nosetests -v || die
}