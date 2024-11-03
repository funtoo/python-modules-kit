# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python extension wrapping the ICU C++ API"
HOMEPAGE="https://gitlab.pyicu.org/main/pyicu https://pypi.org/project/PyICU/"
SRC_URI="https://files.pythonhosted.org/packages/52/21/4e9b0a3ace3027fc63107fa2b5d6e66e321e104da071d787856962fbad52/PyICU-2.14.tar.gz -> PyICU-2.14.tar.gz
"

DEPEND=""
RDEPEND="
	dev-libs/icu:="
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
PATCHES=(
	"$FILESDIR"/pyicu-2.10-fix_displayoptions.patch
)
S="${WORKDIR}/PyICU-2.14"

DOCS=( CHANGES CREDITS README.md )
