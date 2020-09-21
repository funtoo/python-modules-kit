# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=manual
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Cheap setup.py hack to install flit & poetry-based projects"
HOMEPAGE="https://github.com/mgorny/pyproject2setuppy"
SRC_URI="https://files.pythonhosted.org/packages/8e/d4/83f6745164bc660b6e7b3d702e7c8869d504867d4cb831ba3bf7aa627bad/pyproject2setuppy-7.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]"
BDEPEND="${RDEPEND}"

distutils_enable_tests pytest