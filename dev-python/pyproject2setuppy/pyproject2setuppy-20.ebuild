# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=manual
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Cheap setup.py hack to install flit & poetry-based projects"
HOMEPAGE="https://github.com/mgorny/pyproject2setuppy"
SRC_URI="https://files.pythonhosted.org/packages/d6/47/2323f4415b1d66db36d0d6ab730055b29a80aa02ed511485a7f1574ccb21/pyproject2setuppy-20.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]"
BDEPEND="${RDEPEND}"

distutils_enable_tests pytest