# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="A Python library to read/write Excel 2010 xlsx/xlsm/xltx/xltm files.
"
HOMEPAGE="https://openpyxl.readthedocs.io/
https://pypi.org/project/openpyxl/
"
SRC_URI="https://files.pythonhosted.org/packages/f0/d9/cff8962e02d3d63b05b08687340b74534a2bb8dd84a6cf65be96c2937281/openpyxl-3.0.4.tar.gz"

DEPEND=""
RDEPEND="dev-python/et_xmlfile[$PYTHON_USEDEP]
dev-python/jdcal[$PYTHON_USEDEP]
 python_targets_python2_7? ( dev-python/openpyxl-compat )"
IUSE=" python_targets_python2_7 python_single_target_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/openpyxl-${PV}"


