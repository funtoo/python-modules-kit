# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Extract data from Excel spreadsheets"
HOMEPAGE="http://www.python-excel.org/
"
SRC_URI="https://files.pythonhosted.org/packages/a6/b3/19a2540d21dea5f908304375bd43f5ed7a4c28a370dc9122c565423e6b44/xlrd-2.0.1.tar.gz
"

DEPEND=""
RDEPEND=""
BDEPEND="
	dev-python/setuptools[$PYTHON_USEDEP]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/xlrd-2.0.1"