# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/terminado/"
SRC_URI="https://files.pythonhosted.org/packages/b6/17/557926e8c2842133454fe406ea79752a951c4602f2065d3cc6587a130289/terminado-0.17.0.tar.gz -> terminado-0.17.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/ptyprocess[${PYTHON_USEDEP}]
	www-servers/tornado[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD-2"
KEYWORDS="*"
S="${WORKDIR}/terminado-0.17.0"