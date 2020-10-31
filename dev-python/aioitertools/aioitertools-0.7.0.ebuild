# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/f5/47/6ca467ccc0cc2ce4b633490b357f257f4d90cb7f0e251967abfc81bf4102/aioitertools-0.7.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/typing-extensions[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/aioitertools-${PV}"