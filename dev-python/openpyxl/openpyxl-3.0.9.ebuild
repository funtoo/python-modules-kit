# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A Python library to read/write Excel 2010 xlsx/xlsm files"
HOMEPAGE="https://openpyxl.readthedocs.io/
https://pypi.org/project/openpyxl/
"
SRC_URI="https://files.pythonhosted.org/packages/9e/19/c45fb7a40cd46e03e36d60d1db26a50a795fa0b6b8a2a8094f4ac0c71ae5/openpyxl-3.0.9.tar.gz
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

S="${WORKDIR}/openpyxl-3.0.9"
