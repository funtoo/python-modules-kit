# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Pytest support for asyncio"
HOMEPAGE="None https://pypi.org/project/pytest-asyncio/"
SRC_URI="https://files.pythonhosted.org/packages/f2/a8/ecbc8ede70921dd2f544ab1cadd3ff3bf842af27f87bbdea774c7baa1d38/pytest_asyncio-0.25.3.tar.gz -> pytest_asyncio-0.25.3.tar.gz
"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="dev-python/pytest[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pytest_asyncio-0.25.3"