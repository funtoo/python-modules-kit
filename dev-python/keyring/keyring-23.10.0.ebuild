# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/jaraco/keyring https://pypi.org/project/keyring/"
SRC_URI="https://files.pythonhosted.org/packages/85/8f/548f2ed5c1f89c1958e2d4ed6a579430110d938e13a6f5a24445f65e7151/keyring-23.10.0.tar.gz -> keyring-23.10.0.tar.gz
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
S="${WORKDIR}/keyring-23.10.0"