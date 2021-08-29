# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Backported and Experimental Type Hints for Python 3.5+"
HOMEPAGE="https://github.com/python/typing/blob/master/typing_extensions/README.rst https://pypi.org/project/typing-extensions/"
SRC_URI="https://files.pythonhosted.org/packages/aa/55/62e2d4934c282a60b4243a950c9dbfa01ae7cac0e8d6c0b5315b87432c81/typing_extensions-3.10.0.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/typing-extensions-3.10.0.0"

src_unpack() {
	unpack ${A}
	# archive has "typing_extensions" dir with underscore. This fixes it:
	mv "${WORKDIR}/typing_"* "${S}" || die
}
