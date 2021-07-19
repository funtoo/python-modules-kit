# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The Real First Universal Charset Detector"
HOMEPAGE="https://github.com/ousret/charset_normalizer"
SRC_URI="https://files.pythonhosted.org/packages/37/fd/05a04d7e14548474d30d90ad0db5d90ee2ba55cd967511a354cf88b534f1/charset-normalizer-2.0.3.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/charset_normalizer-2.0.3"

src_unpack() {
	default
	mv ${WORKDIR}/charset-normalizer-* ${S} || die
}
src_prepare() {
	sed -i -e '/addopts/d' setup.cfg || die
	distutils-r1_src_prepare
}
