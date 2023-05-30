# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python extension wrapping the ICU C++ API"
HOMEPAGE="https://gitlab.pyicu.org/main/pyicu https://pypi.org/project/PyICU/"
SRC_URI="https://files.pythonhosted.org/packages/03/1b/800fce0236be0b8a99b3ccbb797786dd178028960b3fd65544e2d8bad5ac/PyICU-2.11.tar.gz -> PyICU-2.11.tar.gz
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
S="${WORKDIR}/PyICU-2.11"

DOCS=( CHANGES CREDITS README.md )
