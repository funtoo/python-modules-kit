# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The httplib2 caching algorithms packaged up for use with requests."
HOMEPAGE="https://github.com/ionrock/cachecontrol/ https://pypi.org/project/CacheControl/"
SRC_URI="https://github.com/ionrock/cachecontrol/tarball/5f3cc1e1e134838b5b17c2b9590f84daef2f6a60 -> cachecontrol-0.12.12-5f3cc1e.tar.gz
"

DEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]"
RDEPEND="test? ( dev-python/cherrypy[${PYTHON_USEDEP}] dev-python/lockfile[${PYTHON_USEDEP}] dev-python/mock[${PYTHON_USEDEP}] )"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

post_src_unpack() {
	if [ ! -d "${S}" ]; then
		mv "${WORKDIR}"/ionrock-cachecontrol* "$S" || die
	fi
}

distutils_enable_tests pytest
