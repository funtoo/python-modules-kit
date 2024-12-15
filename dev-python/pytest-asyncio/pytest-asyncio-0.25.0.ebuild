# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Pytest support for asyncio"
HOMEPAGE="None https://pypi.org/project/pytest-asyncio/"
SRC_URI="https://files.pythonhosted.org/packages/94/18/82fcb4ee47d66d99f6cd1efc0b11b2a25029f303c599a5afda7c1bca4254/pytest_asyncio-0.25.0.tar.gz -> pytest_asyncio-0.25.0.tar.gz
"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="dev-python/pytest[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pytest_asyncio-0.25.0"