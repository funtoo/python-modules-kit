# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Backported and Experimental Type Hints for Python 3.5+"
HOMEPAGE="https://github.com/python/typing/blob/master/typing_extensions/README.rst https://pypi.org/project/typing-extensions/"
SRC_URI="https://files.pythonhosted.org/packages/ed/12/c5079a15cf5c01d7f4252b473b00f7e68ee711be605b9f001528f0298b98/typing_extensions-3.10.0.2.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/typing-extensions-3.10.0.2"

src_unpack() {
	unpack ${A}
	# archive has "typing_extensions" dir with underscore. This fixes it:
	mv "${WORKDIR}/typing_"* "${S}" || die
}
