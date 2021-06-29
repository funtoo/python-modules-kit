# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Logging integration for Click"
HOMEPAGE="https://github.com/click-contrib/click-log https://pypi.org/project/click-log/"
SRC_URI="https://files.pythonhosted.org/packages/22/44/3d73579b547f0790a2723728088c96189c8b52bd2ee3c3de8040efc3c1b8/click-log-0.3.2.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/click[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/click-log-0.3.2"

DOCS=( README.rst )
