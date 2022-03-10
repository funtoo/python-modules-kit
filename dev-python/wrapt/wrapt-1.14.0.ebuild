# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Module for decorators, wrappers and monkey patching."
HOMEPAGE="https://github.com/GrahamDumpleton/wrapt https://pypi.org/project/wrapt/"
SRC_URI="https://files.pythonhosted.org/packages/c7/b4/3a937c7f8ee4751b38274c8542e02f42ebf3e080f1344c4a2aff6416630e/wrapt-1.14.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/wrapt-1.14.0"