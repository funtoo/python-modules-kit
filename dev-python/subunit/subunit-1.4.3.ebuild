# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/testing-cabal/subunit"
SRC_URI="https://github.com/testing-cabal/subunit/tarball/f9fccc635fe9b41f20cfe188241f7b2b66c0c0c8 -> subunit-1.4.3-f9fccc6.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/iso8601[${PYTHON_USEDEP}]
	dev-python/testtools[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

post_src_unpack() {
	if [ ! -d "${S}" ]; then
		mv "${WORKDIR}"/testing-cabal-* "$S" || die
	fi
}