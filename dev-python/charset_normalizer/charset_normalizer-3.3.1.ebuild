# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The Real First Universal Charset Detector"
HOMEPAGE="https://github.com/ousret/charset_normalizer"
SRC_URI="https://files.pythonhosted.org/packages/6d/b3/aa417b4e3ace24067f243e45cceaffc12dba6b8bd50c229b43b3b163768b/charset-normalizer-3.3.1.tar.gz -> charset-normalizer-3.3.1.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/charset-normalizer-3.3.1"

src_prepare() {
	sed -i -e '/addopts/d' setup.cfg || die
	distutils-r1_src_prepare
}
