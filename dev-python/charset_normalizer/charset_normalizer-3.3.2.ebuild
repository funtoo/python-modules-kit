# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The Real First Universal Charset Detector"
HOMEPAGE="https://github.com/ousret/charset_normalizer"
SRC_URI="https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset-normalizer-3.3.2.tar.gz -> charset-normalizer-3.3.2.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/charset-normalizer-3.3.2"

src_prepare() {
	sed -i -e '/addopts/d' setup.cfg || die
	distutils-r1_src_prepare
}
