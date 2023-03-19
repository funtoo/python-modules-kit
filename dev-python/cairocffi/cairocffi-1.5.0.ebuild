# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/cairocffi/"
SRC_URI="https://files.pythonhosted.org/packages/28/d6/59ed0aa7f642142db493744c909a59a45e7350277d8987ccfc56cc5244d9/cairocffi-1.5.0.tar.gz -> cairocffi-1.5.0.tar.gz
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
S="${WORKDIR}/cairocffi-1.5.0"

src_prepare() {
	sed -i -e '/pytest-/d' -e '/addopts/d' setup.cfg || die
	distutils-r1_src_prepare
}
