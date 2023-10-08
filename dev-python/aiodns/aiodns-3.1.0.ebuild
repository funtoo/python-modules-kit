# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Simple DNS resolver for asyncio"
HOMEPAGE="https://github.com/saghul/aiodns https://pypi.org/project/aiodns/"
SRC_URI="https://files.pythonhosted.org/packages/e5/70/f9aa5346bb56b9de897ee0ad03e4d94e76731886df59e73218e024c257d6/aiodns-3.1.0.tar.gz -> aiodns-3.1.0.tar.gz
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=">=dev-python/pycares-3[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/aiodns-3.1.0"