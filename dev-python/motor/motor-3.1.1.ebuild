# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/mongodb/motor/ https://pypi.org/project/motor/"
SRC_URI="https://files.pythonhosted.org/packages/30/e4/1402c74569bdfb866460cd93d56e6a2966f20d87253ae3ac24782ea704af/motor-3.1.1.tar.gz -> motor-3.1.1.tar.gz
"

DEPEND=""
RDEPEND="
	!<dev-python/pymongo-4.1
	>=dev-python/pymongo-4.1[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/motor-3.1.1"