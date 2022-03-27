# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="An efficient C++ implementation of the Cassowary constraint solving algorithm"
HOMEPAGE="https://github.com/nucleic/kiwi"
SRC_URI="https://files.pythonhosted.org/packages/c7/c0/5eef3c2fb687b71433f61638e317d468c3276d210bd462cfa0c3039ddf26/kiwisolver-1.4.1.tar.gz"

LICENSE="Clear-BSD"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	>=dev-python/cppy-1.1.0[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest