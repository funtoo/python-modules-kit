# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit_scm"
inherit distutils-r1

DESCRIPTION="Backport of PEP 654 (exception groups)"
HOMEPAGE=" https://pypi.org/project/exceptiongroup/"
SRC_URI="https://files.pythonhosted.org/packages/c2/e1/5561ad26f99b7779c28356f73f69a8b468ef491d0f6adf20d7ed0ac98ec1/exceptiongroup-1.1.3.tar.gz -> exceptiongroup-1.1.3.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/exceptiongroup-1.1.3"