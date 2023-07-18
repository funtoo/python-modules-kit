# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Parsing toolkit for Python, built with a focus on ergonomics, performance and modularity."
HOMEPAGE="https://pypi.org/project/lark"
SRC_URI="https://github.com/lark-parser/lark/tarball/e4df0249c489d20c64222fd293b5cca4c3be4f27 -> lark-1.1.6-e4df024.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

post_src_unpack() {
	if [ ! -d "${S}" ]; then
		mv "${WORKDIR}"/lark-parser-lark* "$S" || die
	fi
}