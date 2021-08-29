# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Backported and Experimental Type Hints for Python 3.5+"
HOMEPAGE="https://github.com/python/typing/blob/master/typing_extensions/README.rst https://pypi.org/project/typing-extensions/"
SRC_URI="https://files.pythonhosted.org/packages/a5/50/6fbfb5a45d4d8024222849f0731f8d8ddc5c7fe657a8f799bd4c605e93e0/typing_extensions-3.10.0.1.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/typing-extensions-3.10.0.1"

src_unpack() {
	unpack ${A}
	# archive has "typing_extensions" dir with underscore. This fixes it:
	mv "${WORKDIR}/typing_"* "${S}" || die
}
