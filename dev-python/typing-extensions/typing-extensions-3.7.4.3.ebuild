# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Backported and Experimental Type Hints for Python 3.7+"
HOMEPAGE=" https://pypi.org/project/typing-extensions/"
SRC_URI="https://files.pythonhosted.org/packages/16/06/0f7367eafb692f73158e5c5cbca1aec798cdf78be5167f6415dd4205fa32/typing_extensions-3.7.4.3.tar.gz -> typing_extensions-3.7.4.3.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/typing_extensions-3.7.4.3"

src_unpack() {
	unpack ${A}
	# archive has "typing_extensions" dir with underscore. This fixes it:
	mv "${WORKDIR}/typing_"* "${S}" || die
}
