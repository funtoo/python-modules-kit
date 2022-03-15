# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="An efficient C++ implementation of the Cassowary constraint solving algorithm"
HOMEPAGE="https://github.com/nucleic/kiwi"
SRC_URI="https://files.pythonhosted.org/packages/de/a8/8c5ed1845bfdcf753ac13c3c6368c16df20a8a8ee3c06e5114eca83b9f0b/kiwisolver-1.4.0.tar.gz"

LICENSE="Clear-BSD"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	>=dev-python/cppy-1.1.0[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest