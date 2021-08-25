# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Python Build Reasonableness"
HOMEPAGE="https://docs.openstack.org/pbr/latest/ https://pypi.org/project/pbr/"
SRC_URI="https://files.pythonhosted.org/packages/35/8c/69ed04ae31ad498c9bdea55766ed4c0c72de596e75ac0d70b58aa25e0acf/pbr-5.6.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/pbr-5.6.0"