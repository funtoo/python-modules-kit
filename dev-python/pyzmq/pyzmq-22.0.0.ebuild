# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy{,3} )

inherit distutils-r1 flag-o-matic toolchain-funcs

DESCRIPTION=""
HOMEPAGE="http://www.zeromq.org/bindings:python https://pypi.org/project/pyzmq/
"
SRC_URI="https://files.pythonhosted.org/packages/c0/f6/a5d9550a7938bdd6af54186b784dd20d52e8b2357f632345243e585c58b1/pyzmq-22.0.0.tar.gz"

DEPEND="
	dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/pyzmq-compat )
	>=net-libs/zeromq-4.2.2-r2:=[drafts]
	dev-python/py[${PYTHON_USEDEP}]
	dev-python/cffi[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
	dev-python/gevent[${PYTHON_USEDEP}]
	' -2
	)"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="LGPL-3"
KEYWORDS="*"

S="${WORKDIR}/pyzmq-${PV}"

python_configure_all() {
	tc-export CC
	append-cppflags -DZMQ_BUILD_DRAFT_API=1
}
