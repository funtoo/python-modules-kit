# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Tornado websocket backend for the Xterm.js Javascript terminal emulator library."
HOMEPAGE="https://github.com/jupyter/terminado https://pypi.org/project/terminado/"
SRC_URI="https://files.pythonhosted.org/packages/f0/2d/2cc0b47da7131c05bb132763442a1fbfdbc5ca1020c388a52dcc426f88f7/terminado-0.12.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/ptyprocess[${PYTHON_USEDEP}]
	www-servers/tornado[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD-2"
KEYWORDS="*"

S="${WORKDIR}/terminado-0.12.0"