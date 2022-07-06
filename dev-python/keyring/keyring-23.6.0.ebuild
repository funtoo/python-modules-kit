# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Store and access your passwords safely."
HOMEPAGE="https://github.com/jaraco/keyring https://pypi.org/project/keyring/"
SRC_URI="https://files.pythonhosted.org/packages/a4/9e/9d9eb6a6dc4f347bae8200a2e1dd65a7b96ae99e29ef8f7452ccc4ef9eea/keyring-23.6.0.tar.gz
"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/secretstorage[${PYTHON_USEDEP}]
	dev-python/entrypoints[${PYTHON_USEDEP}]
	dev-python/jeepney[${PYTHON_USEDEP}]
	dev-python/importlib_metadata[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/keyring-23.6.0"