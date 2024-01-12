# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Parsing toolkit for Python, built with a focus on ergonomics, performance and modularity."
HOMEPAGE="https://pypi.org/project/lark"
SRC_URI="https://github.com/lark-parser/lark/tarball/262ab71d497a8814f0ca42ca468b923fdb47a3c7 -> lark-1.1.9-262ab71.tar.gz
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