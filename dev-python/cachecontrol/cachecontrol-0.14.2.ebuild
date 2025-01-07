# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="The httplib2 caching algorithms packaged up for use with requests."
HOMEPAGE="https://github.com/ionrock/cachecontrol/ https://pypi.org/project/CacheControl/"
SRC_URI="https://files.pythonhosted.org/packages/b7/a4/3390ac4dfa1773f661c8780368018230e8207ec4fd3800d2c0c3adee4456/cachecontrol-0.14.2.tar.gz -> cachecontrol-0.14.2.tar.gz
"

DEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]"
RDEPEND="test? ( dev-python/cherrypy[${PYTHON_USEDEP}] dev-python/lockfile[${PYTHON_USEDEP}] dev-python/mock[${PYTHON_USEDEP}] )"
IUSE="test"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/cachecontrol-0.14.2"

post_src_unpack() {
	rm "${S}"/tests/__init__.py || die
}
