# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="CFFI based drop in replacement for Pycairo"
HOMEPAGE="https://github.com/Kozea/cairocffi"
SRC_URI="https://files.pythonhosted.org/packages/9f/d1/b26207d3a93dbdbee3b1492d59668f88953e9f28b74853e376a7a4f04e83/cairocffi-1.5.1.tar.gz -> cairocffi-1.5.1.tar.gz
"

DEPEND=""
RDEPEND="
	x11-libs/cairo:0=[X,xcb(+)]
	x11-libs/gdk-pixbuf[jpeg]
	$(python_gen_cond_dep '
	>=dev-python/cffi-1.1.0:=[${PYTHON_USEDEP}]
	' 'python*'
	)
	>=dev-python/xcffib-0.3.2[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/cairocffi-1.5.1"

src_prepare() {
	sed -i -e '/pytest-/d' -e '/addopts/d' setup.cfg || die
	distutils-r1_src_prepare
}
