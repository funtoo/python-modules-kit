# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Python CFFI bindings to the Brotli library"
HOMEPAGE="https://github.com/python-hyper/brotlicffi https://pypi.org/project/brotlicffi/"
SRC_URI="https://files.pythonhosted.org/packages/95/9d/70caa61192f570fcf0352766331b735afa931b4c6bc9a348a0925cc13288/brotlicffi-1.1.0.0.tar.gz -> brotlicffi-1.1.0.0.tar.gz"

DEPEND=""
RDEPEND="
	>=app-arch/brotli-1.0.9"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/brotlicffi-1.1.0.0"

src_configure() {
	export USE_SHARED_BROTLI=1
}
