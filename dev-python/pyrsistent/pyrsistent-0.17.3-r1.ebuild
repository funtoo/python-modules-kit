# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Persistent/Functional/Immutable data structures"
HOMEPAGE="https://github.com/tobgu/pyrsistent/ https://pypi.org/project/pyrsistent/"
SRC_URI="https://files.pythonhosted.org/packages/4d/70/fd441df751ba8b620e03fd2d2d9ca902103119616f0f6cc42e6405035062/pyrsistent-0.17.3.tar.gz"

DEPEND=""
RDEPEND=" python_targets_python2_7? ( dev-python/pyrsistent-compat ) dev-python/six[${PYTHON_USEDEP}]
"
IUSE=" python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/pyrsistent-${PV}"

