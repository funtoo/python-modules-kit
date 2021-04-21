# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/17/ef/4a1f8f195db1c9cd475ffdf1baae6081d00d555af01afa708869e3306f9b/httpcore-0.13.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/h11[${PYTHON_USEDEP}]
	dev-python/sniffio[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/httpcore-0.13.0"