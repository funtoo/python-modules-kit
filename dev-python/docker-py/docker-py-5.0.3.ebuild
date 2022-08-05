# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python client for Docker"
HOMEPAGE="https://github.com/docker/docker-py"
SRC_URI="https://github.com/docker/docker-py/tarball/3686248bac901113dc9ed979aed98430fae69d84 -> docker-py-5.0.3-3686248.tar.gz
"

DEPEND="test? ( >=dev-python/mock-1.0.1[${PYTHON_USEDEP}] >=dev-python/paramiko-2.4.2[${PYTHON_USEDEP}] )"
RDEPEND=">=dev-python/requests-2.24.0[${PYTHON_USEDEP}] >=dev-python/six-1.4.0[${PYTHON_USEDEP}] >=dev-python/websocket-client-0.32.0[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

post_src_unpack() {
	if [ ! -d "${S}" ]; then
		mv "${WORKDIR}"/docker-docker-py* "$S" || die
	fi
}

distutils_enable_sphinx docs dev-python/recommonmark >=dev-python/sphinx-1.4.6
src_prepare() {
	default
	# localhost has a better chance of being in /etc/hosts
	sed -i -e 's:socket[.]gethostname():"localhost":' tests/unit/api_test.py || die
	distutils-r1_src_prepare
}
