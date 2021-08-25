# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Python CFFI bindings to the Brotli library"
HOMEPAGE="https://github.com/python-hyper/brotlicffi https://pypi.org/project/brotlicffi/"
SRC_URI="https://files.pythonhosted.org/packages/d3/d8/6acbb65e350213ad6bd96180593fad0a269a3baa845c67fed21adee3959d/brotlicffi-1.0.9.2.tar.gz
"

DEPEND=""
RDEPEND="
	app-arch/brotli:=
	virtual/python-cffi[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/brotlicffi-1.0.9.2"

src_configure() {
	export USE_SHARED_BROTLI=1
}
