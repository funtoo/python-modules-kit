# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Persistent/Functional/Immutable data structures"
HOMEPAGE="https://github.com/tobgu/pyrsistent/ https://pypi.org/project/pyrsistent/"
SRC_URI="https://files.pythonhosted.org/packages/9f/0d/cbca4d0bbc5671822a59f270e4ce3f2195f8a899c97d0d5abb81b191efb5/pyrsistent-0.16.0.tar.gz"

DEPEND=""
RDEPEND=" python_targets_python2_7? ( dev-python/pyrsistent-compat ) dev-python/six[${PYTHON_USEDEP}]
"
IUSE=" python_targets_python2_7 python_single_target_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/pyrsistent-${PV}"

