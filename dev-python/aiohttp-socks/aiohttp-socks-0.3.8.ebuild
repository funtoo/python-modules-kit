# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="SOCKS proxy connector for aiohttp"
HOMEPAGE="https://pypi.org/project/aiohttp-socks/"
SRC_URI="https://files.pythonhosted.org/packages/16/a7/d18a65d9fc739895c00a7d30039c9bd33ac3b5b955197cecf6feaedcfac9/aiohttp_socks-0.3.8.tar.gz -> aiohttp_socks-0.3.8.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="
	>=dev-python/aiohttp-2.3.2[${PYTHON_USEDEP}]
"

DOCS=( README.md )