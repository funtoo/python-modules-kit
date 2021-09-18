# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The Real First Universal Charset Detector"
HOMEPAGE="https://github.com/ousret/charset_normalizer"
SRC_URI="https://files.pythonhosted.org/packages/eb/7f/a6c278746ddbd7094b019b08d1b2187101b1f596f35f81dc27f57d8fcf7c/charset-normalizer-2.0.6.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/charset_normalizer-2.0.6"

src_unpack() {
	default
	mv ${WORKDIR}/charset-normalizer-* ${S} || die
}
src_prepare() {
	sed -i -e '/addopts/d' setup.cfg || die
	distutils-r1_src_prepare
}
