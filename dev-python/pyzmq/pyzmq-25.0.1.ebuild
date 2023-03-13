# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy{,3} )
inherit distutils-r1 flag-o-matic toolchain-funcs

DESCRIPTION=""
HOMEPAGE="https://pyzmq.readthedocs.org https://pypi.org/project/pyzmq/"
SRC_URI="https://files.pythonhosted.org/packages/59/5b/2e1b7498b4a3118bf03b65c16dba9acbe9112f48415a16ae814894033f6a/pyzmq-25.0.1.tar.gz -> pyzmq-25.0.1.tar.gz
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
S="${WORKDIR}/pyzmq-25.0.1"

python_configure_all() {
	tc-export CC
	append-cppflags -DZMQ_BUILD_DRAFT_API=1
}
