# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="CFFI based drop in replacement for Pycairo"
HOMEPAGE="https://github.com/Kozea/cairocffi"
SRC_URI="https://files.pythonhosted.org/packages/02/8d/75ebb7a2f6a835e2bc125ce4c667dccc8e40b92507923dfaf8f079c892a5/cairocffi-1.6.0.tar.gz -> cairocffi-1.6.0.tar.gz
"

DEPEND=""
RDEPEND="
	x11-libs/cairo:0=[X,xcb(+)]
	x11-libs/gdk-pixbuf[jpeg]
	>=dev-python/xcffib-0.3.2[${PYTHON_USEDEP}]"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/cairocffi-1.6.0"