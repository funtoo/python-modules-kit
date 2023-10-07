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
SRC_URI="https://files.pythonhosted.org/packages/a9/95/a3dbbb5028f35eafb79008e7522a75244477d2838f38cbb722248dabc2a8/cycler-0.12.1.tar.gz -> cycler-0.12.1.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

RDEPEND="dev-python/six[${PYTHON_USEDEP}]"

distutils_enable_tests nose