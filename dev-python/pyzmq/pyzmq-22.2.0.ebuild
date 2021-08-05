# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy{,3} )
inherit distutils-r1 flag-o-matic toolchain-funcs

DESCRIPTION="Lightweight and super-fast messaging library built on top of the ZeroMQ library"
HOMEPAGE="http://www.zeromq.org/bindings:python https://pypi.org/project/pyzmq/
"
SRC_URI="https://files.pythonhosted.org/packages/e6/73/88ff9ae59ee839ad713f1d5d8aa9af7f731114b3ca7eaca06b5772589ac0/pyzmq-22.2.0.tar.gz
"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/pyzmq-compat )
	>=net-libs/zeromq-4.2.2-r2:=[drafts]
	dev-python/py[${PYTHON_USEDEP}]
	dev-python/cffi[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="LGPL-3"
KEYWORDS="*"

S="${WORKDIR}/pyzmq-22.2.0"

python_configure_all() {
	tc-export CC
	append-cppflags -DZMQ_BUILD_DRAFT_API=1
}
