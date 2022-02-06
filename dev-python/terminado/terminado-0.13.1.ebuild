# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Tornado websocket backend for the Xterm.js Javascript terminal emulator library."
HOMEPAGE="https://github.com/jupyter/terminado https://pypi.org/project/terminado/"
SRC_URI="https://files.pythonhosted.org/packages/f5/db/a275d7767d7e24435e23d64809a92cdc522914e534670c4837de152b0b33/terminado-0.13.1.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/ptyprocess[${PYTHON_USEDEP}]
	www-servers/tornado[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD-2"
KEYWORDS="*"

S="${WORKDIR}/terminado-0.13.1"