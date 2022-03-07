# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Tornado websocket backend for the Xterm.js Javascript terminal emulator library."
HOMEPAGE="https://github.com/jupyter/terminado https://pypi.org/project/terminado/"
SRC_URI="https://files.pythonhosted.org/packages/ac/f1/c36ca87487efaf6334dd8df61472ae0d09f96e5d778947b10705ef9a12cb/terminado-0.13.3.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/ptyprocess[${PYTHON_USEDEP}]
	www-servers/tornado[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD-2"
KEYWORDS="*"

S="${WORKDIR}/terminado-0.13.3"