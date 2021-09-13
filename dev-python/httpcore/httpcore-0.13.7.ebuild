# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A minimal low-level HTTP client."
HOMEPAGE="https://github.com/encode/httpcore https://pypi.org/project/httpcore/"
SRC_URI="https://files.pythonhosted.org/packages/6a/90/334411fe5455d30498add7d77a8bf4833bfc4671289a954fb2fd43795338/httpcore-0.13.7.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/h11[${PYTHON_USEDEP}]
	dev-python/sniffio[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/httpcore-0.13.7"