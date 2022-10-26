# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://gitlab.pyicu.org/main/pyicu https://pypi.org/project/PyICU/"
SRC_URI="https://files.pythonhosted.org/packages/64/00/a531e119a97e54601f616f5061879ec2d4bb058d225014f9acf94b2970c3/PyICU-2.10.2.tar.gz -> PyICU-2.10.2.tar.gz
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
S="${WORKDIR}/PyICU-2.10.2"

DOCS=( CHANGES CREDITS README.md )
