# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )

inherit distutils-r1

DESCRIPTION="Extract data from Excel spreadsheets"
HOMEPAGE="http://www.python-excel.org/
"
SRC_URI="https://files.pythonhosted.org/packages/aa/05/ec9d4fcbbb74bbf4da9f622b3b61aec541e4eccf31d3c60c5422ec027ce2/xlrd-1.2.0.tar.gz"

DEPEND=""
BDEPEND="dev-python/setuptools[$PYTHON_USEDEP]
"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/xlrd-${PV}"

