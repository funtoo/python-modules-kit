# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python parsing module"
HOMEPAGE="https://github.com/pyparsing/pyparsing/ https://pypi.org/project/pyparsing/"
SRC_URI="https://files.pythonhosted.org/packages/a0/e4/2bae99e2bbdeb17c7cb9c2f7ef6022383ffcab8461d2ec339ff19ce4a969/pyparsing-3.0.3.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pyparsing-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/pyparsing-3.0.3"