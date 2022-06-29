# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="aiosignal: a list of registered asynchronous callbacks"
HOMEPAGE="https://github.com/aio-libs/aiosignal https://pypi.org/project/aiosignal/"
SRC_URI="https://files.pythonhosted.org/packages/27/6b/a89fbcfae70cf53f066ec22591938296889d3cc58fec1e1c393b10e8d71d/aiosignal-1.2.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/frozenlist[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/aiosignal-1.2.0"