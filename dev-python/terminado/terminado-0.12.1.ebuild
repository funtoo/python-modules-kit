# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Tornado websocket backend for the Xterm.js Javascript terminal emulator library."
HOMEPAGE="https://github.com/jupyter/terminado https://pypi.org/project/terminado/"
SRC_URI="https://files.pythonhosted.org/packages/7a/82/97a3b275b44b031eba1e27e136993464e670821aa4616a9dfaba0c2b4e8f/terminado-0.12.1.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/ptyprocess[${PYTHON_USEDEP}]
	www-servers/tornado[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD-2"
KEYWORDS="*"

S="${WORKDIR}/terminado-0.12.1"