# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="FetchCord grabs your OS info and displays it as Discord Rich Presence"
HOMEPAGE="https://github.com/MrPotatoBobx/FetchCord"
SRC_URI="https://files.pythonhosted.org/packages/07/83/3cfc1cbe547c08ad063777c900e97849a31cb616ad004813208f916f8b4c/FetchCord-2.7.6.tar.gz
"

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

S="${WORKDIR}/FetchCord-2.7.6"