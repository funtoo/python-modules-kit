# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit_scm"
inherit distutils-r1

DESCRIPTION="Backport of PEP 654 (exception groups)"
HOMEPAGE=" https://pypi.org/project/exceptiongroup/"
SRC_URI="https://files.pythonhosted.org/packages/55/09/5d2079ecab0ca483e527a1707a483562bdc17abf829d3e73f0c1a73b61c7/exceptiongroup-1.1.2.tar.gz -> exceptiongroup-1.1.2.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/exceptiongroup-1.1.2"