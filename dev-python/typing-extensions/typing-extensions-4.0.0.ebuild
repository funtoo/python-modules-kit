# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Backported and Experimental Type Hints for Python 3.6+"
HOMEPAGE=" https://pypi.org/project/typing-extensions/"
SRC_URI="https://files.pythonhosted.org/packages/1a/23/748b0c9a5578110b31580c8d2643319adcb3ec91f601b50a955051b51f1d/typing_extensions-4.0.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/typing-extensions-4.0.0"

src_unpack() {
	unpack ${A}
	# archive has "typing_extensions" dir with underscore. This fixes it:
	mv "${WORKDIR}/typing_"* "${S}" || die
}
