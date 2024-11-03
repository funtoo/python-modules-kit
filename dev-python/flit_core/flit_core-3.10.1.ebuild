# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Simplified packaging of Python modules (core module)"
HOMEPAGE="None https://pypi.org/project/flit-core/"
SRC_URI="https://files.pythonhosted.org/packages/d5/ae/09427bea9227a33ec834ed5461432752fd5d02b14f93dd68406c91684622/flit_core-3.10.1.tar.gz -> flit_core-3.10.1.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/flit_core-3.10.1"