# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/Kozea/cairocffi https://pypi.org/project/cairocffi/"
SRC_URI="https://files.pythonhosted.org/packages/f4/10/82a8384882b4a7096256ee5c3fba65b6a0be67f08e8de130cd3627edb12f/cairocffi-1.4.0.tar.gz -> cairocffi-1.4.0.tar.gz
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
S="${WORKDIR}/cairocffi-1.4.0"

src_prepare() {
	sed -i -e '/pytest-/d' -e '/addopts/d' setup.cfg || die
	distutils-r1_src_prepare
}
