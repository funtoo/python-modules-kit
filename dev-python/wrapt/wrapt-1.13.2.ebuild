# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Module for decorators, wrappers and monkey patching."
HOMEPAGE="https://github.com/GrahamDumpleton/wrapt https://pypi.org/project/wrapt/"
SRC_URI="https://files.pythonhosted.org/packages/57/f0/b9c4beb5be22485ff0f09427dcc4e483dbf3a34fd5afb4f93cd6c68b2fac/wrapt-1.13.2.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/wrapt-1.13.2"