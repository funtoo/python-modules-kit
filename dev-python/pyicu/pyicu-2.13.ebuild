# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python extension wrapping the ICU C++ API"
HOMEPAGE="https://gitlab.pyicu.org/main/pyicu https://pypi.org/project/PyICU/"
SRC_URI="https://files.pythonhosted.org/packages/bb/bb/fe4a180376ee695f76925b1a6b159353873b61e0f82ac16150d22cdd56c3/PyICU-2.13.tar.gz -> PyICU-2.13.tar.gz"

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
S="${WORKDIR}/PyICU-2.13"

DOCS=( CHANGES CREDITS README.md )
