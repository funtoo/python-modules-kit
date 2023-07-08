# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Editable installations"
HOMEPAGE=" https://pypi.org/project/editables/"
SRC_URI="https://files.pythonhosted.org/packages/43/8a/a060ff3e75328015150f680b4b4bc4617644aaef199ece380342a334d78f/editables-0.4.tar.gz -> editables-0.4.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/editables-0.4"