# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Module for decorators, wrappers and monkey patching."
HOMEPAGE="https://github.com/GrahamDumpleton/wrapt https://pypi.org/project/wrapt/"
SRC_URI="https://files.pythonhosted.org/packages/e2/30/dae34ff8afa579098e5796452c414efa4b2738afda40318fdb26e1a8edc1/wrapt-1.13.1.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/wrapt-1.13.1"