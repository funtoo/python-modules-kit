# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit_scm"
inherit distutils-r1

DESCRIPTION="Backport of PEP 654 (exception groups)"
HOMEPAGE="None https://pypi.org/project/exceptiongroup/"
SRC_URI="https://files.pythonhosted.org/packages/a0/65/d66b7fbaef021b3c954b3bbb196d21d8a4b97918ea524f82cfae474215af/exceptiongroup-1.2.1.tar.gz -> exceptiongroup-1.2.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/exceptiongroup-1.2.1"