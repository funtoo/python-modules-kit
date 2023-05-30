# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="The httplib2 caching algorithms packaged up for use with requests."
HOMEPAGE="https://github.com/ionrock/cachecontrol/ https://pypi.org/project/CacheControl/"
SRC_URI="https://files.pythonhosted.org/packages/46/9b/34215200b0c2b2229d7be45c1436ca0e8cad3b10de42cfea96983bd70248/CacheControl-0.12.11.tar.gz -> CacheControl-0.12.11.tar.gz
"

DEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]"
RDEPEND="test? ( dev-python/cherrypy[${PYTHON_USEDEP}] dev-python/lockfile[${PYTHON_USEDEP}] dev-python/mock[${PYTHON_USEDEP}] )"
IUSE="test"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/cachecontrol-0.12.11"

post_src_unpack() {
	mv "${WORKDIR}"/CacheControl-* "${S}" || die
	rm -f "${S}"/tests/__init__.py
}
