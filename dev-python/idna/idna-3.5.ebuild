# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Internationalized Domain Names in Applications (IDNA)"
HOMEPAGE=" https://pypi.org/project/idna/"
SRC_URI="https://files.pythonhosted.org/packages/9b/c4/db3e4b22ebc18ee797dae8e14b5db68e5826ae6337334c276f1cb4ff84fb/idna-3.5.tar.gz -> idna-3.5.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/idna-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/idna-3.5"