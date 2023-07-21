# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Parsing toolkit for Python, built with a focus on ergonomics, performance and modularity."
HOMEPAGE="https://pypi.org/project/lark"
SRC_URI="https://github.com/lark-parser/lark/tarball/e795810d9849a5ee517effadc7693f7a4ea2f076 -> lark-1.1.7-e795810.tar.gz
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