# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Store and access your passwords safely."
HOMEPAGE="https://github.com/jaraco/keyring https://pypi.org/project/keyring/"
SRC_URI="https://files.pythonhosted.org/packages/18/ec/cc0afdcd7538d4942a6b78f858139120a8c7999e554004080ed312e43886/keyring-25.1.0.tar.gz -> keyring-25.1.0.tar.gz"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/secretstorage[${PYTHON_USEDEP}]
	dev-python/entrypoints[${PYTHON_USEDEP}]
	dev-python/jeepney[${PYTHON_USEDEP}]
	dev-python/importlib_metadata[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/keyring-25.1.0"