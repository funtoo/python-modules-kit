# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

MY_PN="Cycler"

DESCRIPTION="Composable style cycles"
HOMEPAGE="
	https://matplotlib.org/cycler/
	https://pypi.org/project/Cycler/
	https://github.com/matplotlib/cycler"
SRC_URI="https://files.pythonhosted.org/packages/3f/22/13979b9dcef3296cae2e8d2b074be4d904ad36ec766d6fc0bb7cb4cbb258/cycler-0.12.0.tar.gz -> cycler-0.12.0.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

RDEPEND="dev-python/six[${PYTHON_USEDEP}]"

distutils_enable_tests nose