# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A Python module to customize the process title"
HOMEPAGE="https://github.com/dvarrazzo/py-setproctitle https://pypi.org/project/setproctitle/"
SRC_URI="https://files.pythonhosted.org/packages/ae/4e/b09341b19b9ceb8b4c67298ab4a08ef7a4abdd3016c7bb152e9b6379031d/setproctitle-1.3.4.tar.gz -> setproctitle-1.3.4.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/setproctitle-1.3.4"