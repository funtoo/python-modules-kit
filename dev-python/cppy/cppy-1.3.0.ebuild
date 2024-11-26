# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="None https://pypi.org/project/cppy/"
SRC_URI="https://files.pythonhosted.org/packages/1e/84/62a09daa04e732a5763ec22dbc11b988e5140a77b418ea70bba9ab1a77a5/cppy-1.3.0.tar.gz -> cppy-1.3.0.tar.gz
"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/cppy-1.3.0"