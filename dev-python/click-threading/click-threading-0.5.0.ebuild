# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Multithreaded Click apps made easy"
HOMEPAGE="https://github.com/click-contrib/click-threading https://pypi.org/project/click-threading/"
SRC_URI="https://files.pythonhosted.org/packages/df/ea/0b20b8e09a6ba1df6defc29479c462437a8e8a3b6f4203fcad8b0a5e3fa3/click-threading-0.5.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/click[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/click-threading-0.5.0"

DOCS=( README.rst )
