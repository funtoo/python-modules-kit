# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="A Python library to read/write Excel 2010 xlsx/xlsm files"
HOMEPAGE="https://openpyxl.readthedocs.io/
https://pypi.org/project/openpyxl/
"
SRC_URI="https://files.pythonhosted.org/packages/d6/26/eb28e975b7a37aad38d7ec4f7a0f652bdee6ecf36e6bd06f473c5af9b87b/openpyxl-2.6.4.tar.gz -> openpyxl-2.6.4.tar.gz"

DEPEND=""
RDEPEND="!<dev-python/openpyxl-3 
	dev-python/et_xmlfile[${PYTHON_USEDEP}]
	dev-python/jdcal[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/openpyxl-2.6.4"


post_src_install() {
	rm -rf ${D}/usr/bin
}