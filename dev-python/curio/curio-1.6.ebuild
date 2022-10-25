# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/dabeaz/curio https://pypi.org/project/curio/"
SRC_URI="https://files.pythonhosted.org/packages/e9/d9/ed3d361fea04f3300eb69a23d97aa1be003c9dab0e5b10244fef0ad2c1ba/curio-1.6.tar.gz -> curio-1.6.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/curio-1.6"