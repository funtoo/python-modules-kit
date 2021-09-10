# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A Python library to read/write Excel 2010 xlsx/xlsm files"
HOMEPAGE="https://openpyxl.readthedocs.io/
https://pypi.org/project/openpyxl/
"
SRC_URI="https://files.pythonhosted.org/packages/1f/fd/b8d831d0cc949c454b1f02d26b4cd5bafaf71e959a68f326909291fb2089/openpyxl-3.0.8.tar.gz
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

S="${WORKDIR}/openpyxl-3.0.8"
