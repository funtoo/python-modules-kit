# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/MrPotatoBobx/FetchCord https://pypi.org/project/FetchCord/"
SRC_URI="https://files.pythonhosted.org/packages/23/d3/92634dea7df2ae02d13d87f35fe3655dffcfc7dda416e4c2aadb33a2363b/FetchCord-2.7.7.tar.gz -> FetchCord-2.7.7.tar.gz
"

DEPEND="
	net-im/discord-bin
	app-misc/neofetch
	x11-apps/mesa-progs"
RDEPEND="
	dev-python/psutil[${PYTHON_USEDEP}]
	dev-python/pypresence[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/FetchCord-2.7.7"