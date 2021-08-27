# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )
inherit distutils-r1

DESCRIPTION="Core utilities for Python packages"
HOMEPAGE="https://github.com/pypa/packaging https://pypi.org/project/packaging/"
SRC_URI="https://files.pythonhosted.org/packages/df/86/aef78bab3afd461faecf9955a6501c4999933a48394e90f03cd512aad844/packaging-21.0.tar.gz
"

DEPEND=""
RDEPEND=">=dev-python/pyparsing-2.1.10[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="|| ( Apache-2.0 BSD-2 )"
KEYWORDS="*"

S="${WORKDIR}/packaging-21.0"