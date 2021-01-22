# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="FetchCord grabs your OS info and displays it as Discord Rich Presence"
HOMEPAGE="https://github.com/MrPotatoBobx/FetchCord"
SRC_URI="https://files.pythonhosted.org/packages/4c/28/2081447848e38890a636a23a485727228dc9f29e974e44602da778060b9e/FetchCord-2.7.0.tar.gz"

DEPEND="
	net-im/discord-bin
	app-misc/neofetch
	x11-apps/mesa-progs"
RDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/psutil[${PYTHON_USEDEP}]
	dev-python/pypresence[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/FetchCord-${PV}"