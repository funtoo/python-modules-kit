# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Store and access your passwords safely."
HOMEPAGE="https://github.com/jaraco/keyring https://pypi.org/project/keyring/"
SRC_URI="https://files.pythonhosted.org/packages/55/fe/282f4c205add8e8bb3a1635cbbac59d6def2e0891b145aa553a0e40dd2d0/keyring-23.13.1.tar.gz -> keyring-23.13.1.tar.gz
"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/entrypoints[${PYTHON_USEDEP}]
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	dev-python/jeepney[${PYTHON_USEDEP}]
	dev-python/secretstorage[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/keyring-23.13.1"