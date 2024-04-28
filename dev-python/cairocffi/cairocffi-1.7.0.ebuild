# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="CFFI based drop in replacement for Pycairo"
HOMEPAGE="https://github.com/Kozea/cairocffi"
SRC_URI="https://files.pythonhosted.org/packages/ba/94/372aaeb17dce40a646e5a2df61d10e43a20b6d3021deeab8280eba748077/cairocffi-1.7.0.tar.gz -> cairocffi-1.7.0.tar.gz"

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
S="${WORKDIR}/cairocffi-1.7.0"