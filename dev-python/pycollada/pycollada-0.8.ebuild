# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="python library for reading and writing collada documents"
HOMEPAGE="http://pycollada.readthedocs.org/ https://pypi.org/project/pycollada/"
SRC_URI="https://files.pythonhosted.org/packages/dc/f1/5e81108414287278a01f1642271d7885e2aebc2bd10e7cf744d8c4cf0955/pycollada-0.8.tar.gz -> pycollada-0.8.tar.gz
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
S="${WORKDIR}/pycollada-0.8"