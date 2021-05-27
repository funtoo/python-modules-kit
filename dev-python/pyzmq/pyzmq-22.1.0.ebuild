# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy{,3} )
inherit distutils-r1 flag-o-matic toolchain-funcs

DESCRIPTION=""
HOMEPAGE="http://www.zeromq.org/bindings:python https://pypi.org/project/pyzmq/
"
SRC_URI="https://files.pythonhosted.org/packages/99/3b/69360102db726741053d1446cbe9f7f06df7e2a6d5b805ee71841abf1cdc/pyzmq-22.1.0.tar.gz
"

DEPEND="
	dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/pyzmq-compat )
	>=net-libs/zeromq-4.2.2-r2:=[drafts]
	dev-python/py[${PYTHON_USEDEP}]
	dev-python/cffi[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="LGPL-3"
KEYWORDS="*"

S="${WORKDIR}/pyzmq-22.1.0"

python_configure_all() {
	tc-export CC
	append-cppflags -DZMQ_BUILD_DRAFT_API=1
}
