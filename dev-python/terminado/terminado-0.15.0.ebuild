# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/terminado/"
SRC_URI="https://files.pythonhosted.org/packages/4b/27/79dabfeda57d2a878611b41f7d9a401b3b6509c610ec90121a980df0a600/terminado-0.15.0.tar.gz -> terminado-0.15.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/ptyprocess[${PYTHON_USEDEP}]
	www-servers/tornado[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD-2"
KEYWORDS="*"
S="${WORKDIR}/terminado-0.15.0"