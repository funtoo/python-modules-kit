# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Parsing toolkit for Python, built with a focus on ergonomics, performance and modularity."
HOMEPAGE="https://pypi.org/project/lark"
SRC_URI="https://github.com/lark-parser/lark/tarball/7d9cfa6ed09a2b125e97e3a1810d9c6443f1718e -> lark-1.1.5-7d9cfa6.tar.gz
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