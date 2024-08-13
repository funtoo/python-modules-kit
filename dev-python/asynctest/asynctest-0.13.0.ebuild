# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Enhance the standard unittest package with features for testing asyncio libraries"
HOMEPAGE="https://github.com/Martiusweb/asynctest/ https://pypi.org/project/asynctest/"
SRC_URI="https://files.pythonhosted.org/packages/0c/0f/6056f4435923d2f8c89ac9ef2d18506a569348d8f9cc827b0dd7a4c8acc4/asynctest-0.13.0.tar.gz -> asynctest-0.13.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/asynctest-0.13.0"