# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="FetchCord grabs your OS info and displays it as Discord Rich Presence"
HOMEPAGE="https://github.com/MrPotatoBobx/FetchCord"
SRC_URI="https://files.pythonhosted.org/packages/e5/2e/62c08579b4665d72c272d3ad26a5ba2f3b40ccd11f428bf28002570c3e77/FetchCord-2.7.4.tar.gz
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

S="${WORKDIR}/FetchCord-2.7.4"