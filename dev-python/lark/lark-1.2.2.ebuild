# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Parsing toolkit for Python, built with a focus on ergonomics, performance and modularity."
HOMEPAGE="https://pypi.org/project/lark"
SRC_URI="https://github.com/lark-parser/lark/tarball/acfe33d943a1310f3ca26145eb2896bc5c4955c9 -> lark-1.2.2-acfe33d.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

post_src_unpack() {
	if [ ! -d "${S}" ]; then
		mv "${WORKDIR}"/lark-parser-* "$S" || die
	fi
}