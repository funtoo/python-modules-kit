# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A Python library to read/write Excel 2010 xlsx/xlsm files"
HOMEPAGE="https://openpyxl.readthedocs.io/
https://pypi.org/project/openpyxl/
"
SRC_URI="https://files.pythonhosted.org/packages/42/e8/af028681d493814ca9c2ff8106fc62a4a32e4e0ae14602c2a98fc7b741c8/openpyxl-3.1.2.tar.gz -> openpyxl-3.1.2.tar.gz
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
S="${WORKDIR}/openpyxl-3.1.2"
