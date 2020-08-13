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
SRC_URI="https://files.pythonhosted.org/packages/c2/4b/137dea450d6e1e3d474e1d873cd1d4f7d3beed7e0dc973b06e8e10d32488/cycler-0.10.0.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

RDEPEND="dev-python/six[${PYTHON_USEDEP}]"

distutils_enable_tests nose