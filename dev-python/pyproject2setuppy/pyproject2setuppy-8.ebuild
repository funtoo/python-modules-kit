# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=manual
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Cheap setup.py hack to install flit & poetry-based projects"
HOMEPAGE="https://github.com/mgorny/pyproject2setuppy"
SRC_URI="https://files.pythonhosted.org/packages/b0/6b/70cb9bbfdc96030d56fa3d38388fca298939089bbc4cd80601ed08b6bf9d/pyproject2setuppy-8.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]"
BDEPEND="${RDEPEND}"

distutils_enable_tests pytest