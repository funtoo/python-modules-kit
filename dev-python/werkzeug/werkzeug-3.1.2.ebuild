# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The comprehensive WSGI web application library."
HOMEPAGE="None https://pypi.org/project/Werkzeug/"
SRC_URI="https://files.pythonhosted.org/packages/9f/e7/58868f1a95bd6f2ffa0a26af212675fb74be2a4c4bfa3541077b0ca14ad3/werkzeug-3.1.2.tar.gz -> werkzeug-3.1.2.tar.gz
"

DEPEND=""
RDEPEND="dev-python/markupsafe[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/werkzeug-3.1.2"