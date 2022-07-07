# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://pycollada.readthedocs.org/ https://pypi.org/project/pycollada/"
SRC_URI="https://files.pythonhosted.org/packages/c1/7e/91cb2540947f0e8bcdee83e61a7b278784ac2d25f2864091344590a2619f/pycollada-0.7.2.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/numpy[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.2[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pycollada-0.7.2"