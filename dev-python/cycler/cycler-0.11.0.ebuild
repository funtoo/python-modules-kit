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
SRC_URI="https://files.pythonhosted.org/packages/34/45/a7caaacbfc2fa60bee42effc4bcc7d7c6dbe9c349500e04f65a861c15eb9/cycler-0.11.0.tar.gz -> cycler-0.11.0.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

RDEPEND="dev-python/six[${PYTHON_USEDEP}]"

distutils_enable_tests nose