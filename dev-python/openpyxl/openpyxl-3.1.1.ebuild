# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://openpyxl.readthedocs.io https://pypi.org/project/openpyxl/"
SRC_URI="https://files.pythonhosted.org/packages/10/bf/950ea7896f3c42ab04073cd2903f0a190ba77ef28bdf76191f6f86373712/openpyxl-3.1.1.tar.gz -> openpyxl-3.1.1.tar.gz
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
S="${WORKDIR}/openpyxl-3.1.1"
