# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Pytest support for asyncio"
HOMEPAGE="https://github.com/pytest-dev/pytest-asyncio https://pypi.org/project/pytest-asyncio/"
SRC_URI="https://files.pythonhosted.org/packages/72/2b/67cf2070361f4160403210530bab713bacc2024d09f0022f1142a17ff596/pytest-asyncio-0.18.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/pytest[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/pytest-asyncio-0.18.0"