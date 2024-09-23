# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Deal PySol FreeCell cards"
HOMEPAGE="https://github.com/shlomif/pysol_cards/
https://pypi.org/project/pysol-cards/
"
SRC_URI="https://files.pythonhosted.org/packages/cb/8d/967a50fde0877b5353c75e907de8bd2135ad3ad2f754c83092534a2fa4ba/pysol_cards-0.18.0.tar.gz -> pysol_cards-0.18.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/random2[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pysol_cards-0.18.0"