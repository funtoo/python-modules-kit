# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A minimal low-level HTTP client."
HOMEPAGE="https://github.com/encode/httpcore https://pypi.org/project/httpcore/"
SRC_URI="https://files.pythonhosted.org/packages/e6/24/510787b2b34e3007a17073486ad14f8062abf189953f92c0240f38e73d00/httpcore-0.14.1.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/h11[${PYTHON_USEDEP}]
	dev-python/sniffio[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/httpcore-0.14.1"