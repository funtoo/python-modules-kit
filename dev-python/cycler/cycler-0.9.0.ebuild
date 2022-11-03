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
SRC_URI="https://files.pythonhosted.org/packages/3a/94/c67a0ca1c56aa26fdc957f17f9c119f85b5f3739d63f3bae8baf05603281/cycler-0.9.0.tar.gz -> cycler-0.9.0.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

RDEPEND="dev-python/six[${PYTHON_USEDEP}]"

distutils_enable_tests nose