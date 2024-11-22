# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Module for decorators, wrappers and monkey patching."
HOMEPAGE="https://github.com/GrahamDumpleton/wrapt https://pypi.org/project/wrapt/"
SRC_URI="https://files.pythonhosted.org/packages/24/a1/fc03dca9b0432725c2e8cdbf91a349d2194cf03d8523c124faebe581de09/wrapt-1.17.0.tar.gz -> wrapt-1.17.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/wrapt-1.17.0"