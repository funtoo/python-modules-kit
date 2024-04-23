# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A small Python package for determining appropriate platform-specific dirs, e.g. a `user data dir`."
HOMEPAGE="None https://pypi.org/project/platformdirs/"
SRC_URI="https://files.pythonhosted.org/packages/b2/e4/2856bf61e54d7e3a03dd00d0c1b5fa86e6081e8f262eb91befbe64d20937/platformdirs-4.2.1.tar.gz -> platformdirs-4.2.1.tar.gz"

DEPEND="dev-python/hatch-vcs[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/platformdirs-4.2.1"