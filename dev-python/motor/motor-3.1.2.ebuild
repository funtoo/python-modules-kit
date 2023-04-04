# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/mongodb/motor/ https://pypi.org/project/motor/"
SRC_URI="https://files.pythonhosted.org/packages/82/96/ae017cd62761d2fd2cc1eabfc902c3b4e3768fe994fc6a2f474694a56910/motor-3.1.2.tar.gz -> motor-3.1.2.tar.gz
"

DEPEND=""
RDEPEND="
	!<dev-python/pymongo-4.1
	>=dev-python/pymongo-4.1[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/motor-3.1.2"