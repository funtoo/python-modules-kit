# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Multithreaded Click apps made easy"
HOMEPAGE="https://github.com/click-contrib/click-threading https://pypi.org/project/click-threading/"
SRC_URI="https://files.pythonhosted.org/packages/82/5f/6f61961ab1310c12fd90d5dd036b86134e9ad35b48e50207a23b6fbaa2fb/click-threading-0.4.4.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/click[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/click-threading-0.4.4"

DOCS=( README.rst )
