# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A minimal low-level HTTP client."
HOMEPAGE="https://github.com/encode/httpcore https://pypi.org/project/httpcore/"
SRC_URI="https://files.pythonhosted.org/packages/00/7e/7e2d8511e01069e03c3313203214709756a6e2f36ccfd793b7e238d24bab/httpcore-0.14.3.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/h11[${PYTHON_USEDEP}]
	dev-python/sniffio[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/httpcore-0.14.3"