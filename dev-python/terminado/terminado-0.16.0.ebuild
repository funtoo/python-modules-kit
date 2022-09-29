# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/terminado/"
SRC_URI="https://files.pythonhosted.org/packages/e2/93/eb3fac361b6d47ae0e4f602839d0b028825b94aa70b91936f7a3e85a7973/terminado-0.16.0.tar.gz -> terminado-0.16.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/ptyprocess[${PYTHON_USEDEP}]
	www-servers/tornado[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD-2"
KEYWORDS="*"
S="${WORKDIR}/terminado-0.16.0"