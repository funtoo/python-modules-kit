# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/jaraco/keyring https://pypi.org/project/keyring/"
SRC_URI="https://files.pythonhosted.org/packages/aa/1d/8e4e862194abe5f49b1a0a98ab875e8bdc439ddfe639649f1072919a56cd/keyring-23.8.1.tar.gz -> keyring-23.8.1.tar.gz
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
S="${WORKDIR}/keyring-23.8.1"