# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="A Python library to read/write Excel 2010 xlsx/xlsm/xltx/xltm files.
"
HOMEPAGE="https://openpyxl.readthedocs.io/
https://pypi.org/project/openpyxl/
"
SRC_URI="https://files.pythonhosted.org/packages/95/8c/83563c60489954e5b80f9e2596b93a68e1ac4e4a730deb1aae632066d704/openpyxl-3.0.3.tar.gz"

DEPEND=""
RDEPEND="dev-python/et_xmlfile[$PYTHON_USEDEP]
dev-python/jdcal[$PYTHON_USEDEP]
 python_targets_python2_7? ( dev-python/openpyxl-compat )"
IUSE=" python_targets_python2_7 python_single_target_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/openpyxl-${PV}"


