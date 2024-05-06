# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The comprehensive WSGI web application library."
HOMEPAGE="None https://pypi.org/project/Werkzeug/"
SRC_URI="https://files.pythonhosted.org/packages/02/51/2e0fc149e7a810d300422ab543f87f2bcf64d985eb6f1228c4efd6e4f8d4/werkzeug-3.0.3.tar.gz -> werkzeug-3.0.3.tar.gz"

DEPEND=""
RDEPEND="dev-python/markupsafe[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/werkzeug-3.0.3"