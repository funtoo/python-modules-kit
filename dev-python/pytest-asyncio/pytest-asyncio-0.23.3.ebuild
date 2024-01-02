# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Pytest support for asyncio"
HOMEPAGE="https://github.com/pytest-dev/pytest-asyncio https://pypi.org/project/pytest-asyncio/"
SRC_URI="https://files.pythonhosted.org/packages/1d/27/f036ec4bcbfd056c54572d7169ba3dbb54e7181f02f21caadd3aecb9cf5b/pytest-asyncio-0.23.3.tar.gz -> pytest-asyncio-0.23.3.tar.gz"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="dev-python/pytest[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pytest-asyncio-0.23.3"