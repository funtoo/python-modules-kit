# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A minimal low-level HTTP client."
HOMEPAGE="https://github.com/encode/httpcore https://pypi.org/project/httpcore/"
SRC_URI="https://files.pythonhosted.org/packages/42/98/44c3e51a0655eae75adefee028c9bada7427a90f63105e54f5e735946f50/httpcore-0.15.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/h11[${PYTHON_USEDEP}]
	dev-python/sniffio[${PYTHON_USEDEP}]
	dev-python/anyio[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/httpcore-0.15.0"