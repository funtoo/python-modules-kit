# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="FetchCord grabs your OS info and displays it as Discord Rich Presence"
HOMEPAGE="https://github.com/MrPotatoBobx/FetchCord"
SRC_URI="https://files.pythonhosted.org/packages/af/c7/32f4b4d73f2427a1a3aecf5b13d5aa8dd76f00ddb026bc610c11925e07dc/FetchCord-2.7.2.tar.gz
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
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/FetchCord-2.7.2"