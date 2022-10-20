# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/Ousret/charset_normalizer https://pypi.org/project/charset-normalizer/"
SRC_URI="https://files.pythonhosted.org/packages/fe/77/6d5d367b7cfee812a88573e80bbe25cea2d015ed2c3490e4464951ff3232/charset-normalizer-3.0.0.tar.gz -> charset-normalizer-3.0.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/charset_normalizer-3.0.0"

src_unpack() {
	default
	mv ${WORKDIR}/charset-normalizer-* ${S} || die
}
src_prepare() {
	sed -i -e '/addopts/d' setup.cfg || die
	distutils-r1_src_prepare
}
