# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="SOCKS proxy connector for aiohttp"
HOMEPAGE="https://pypi.org/project/aiohttp-socks/"
SRC_URI="https://files.pythonhosted.org/packages/22/be/df389469083cba73df69d1cef68056d7ce2bda76ced3d023dd75493558f5/aiohttp_socks-0.8.4.tar.gz -> aiohttp_socks-0.8.4.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="
	>=dev-python/aiohttp-2.3.2[${PYTHON_USEDEP}]
"

DOCS=( README.md )