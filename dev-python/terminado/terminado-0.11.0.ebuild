# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Tornado websocket backend for the Xterm.js Javascript terminal emulator library."
HOMEPAGE="https://github.com/jupyter/terminado https://pypi.org/project/terminado/"
SRC_URI="https://files.pythonhosted.org/packages/79/ef/f2c8152a845278b84284fbbeb8a3bef0d8eb4b12ab211e3fec327132ef56/terminado-0.11.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/ptyprocess[${PYTHON_USEDEP}]
	www-servers/tornado[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD-2"
KEYWORDS="*"

S="${WORKDIR}/terminado-0.11.0"