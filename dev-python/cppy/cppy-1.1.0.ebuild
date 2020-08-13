# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="C++ header library which makes it easier to write Python extension modules"
HOMEPAGE="https://pypi.org/project/cppy"
SRC_URI="https://files.pythonhosted.org/packages/36/64/be592e84c443a70ea5dcfb1c30bfe6f10ba7d8eb05c2264c7ceca8498548/cppy-1.1.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

distutils_enable_tests pytest