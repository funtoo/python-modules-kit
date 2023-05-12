# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1 flag-o-matic toolchain-funcs

DESCRIPTION="Lightweight and super-fast messaging library built on top of the ZeroMQ library"
HOMEPAGE="http://www.zeromq.org/bindings:python https://pypi.org/project/pyzmq/
"
SRC_URI="https://files.pythonhosted.org/packages/05/77/7483975d84fe1fd24cc67881ba7810e0e7b3ee6c2a0e002a5d6703cca49b/pyzmq-19.0.2.tar.gz -> pyzmq-19.0.2.tar.gz
"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="!<=dev-python/pyzmq-19.0.2 
	>=net-libs/zeromq-4.2.2-r2:=[drafts]
	dev-python/py[${PYTHON_USEDEP}]
	dev-python/cffi[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
	dev-python/gevent[${PYTHON_USEDEP}]
	' -2
	)"
IUSE=""
SLOT="0"
LICENSE="LGPL-3"
KEYWORDS="*"
S="${WORKDIR}/pyzmq-19.0.2"

python_configure_all() {
	tc-export CC
	append-cppflags -DZMQ_BUILD_DRAFT_API=1
}


post_src_install() {
	rm -rf ${D}/usr/bin
}