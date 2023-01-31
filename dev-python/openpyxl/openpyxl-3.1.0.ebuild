# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://openpyxl.readthedocs.io https://pypi.org/project/openpyxl/"
SRC_URI="https://files.pythonhosted.org/packages/3d/73/bb87810cdde809f69fef11d31e77297894e58710d47626dc5e5b3ff8f92a/openpyxl-3.1.0.tar.gz -> openpyxl-3.1.0.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/openpyxl-compat )
	dev-python/et_xmlfile[${PYTHON_USEDEP}]
	dev-python/jdcal[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/openpyxl-3.1.0"
