# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )
inherit distutils-r1

DESCRIPTION="HTTP library with thread-safe connection pooling, file post, and more."
HOMEPAGE=" https://pypi.org/project/urllib3/"
SRC_URI="https://files.pythonhosted.org/packages/21/79/6372d8c0d0641b4072889f3ff84f279b738cd8595b64c8e0496d4e848122/urllib3-1.26.15.tar.gz -> urllib3-1.26.15.tar.gz
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	!>=dev-python/urllib3-2
	!dev-python/urllib3-compat"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/urllib3-1.26.15"