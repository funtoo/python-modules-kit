# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="autostub"
inherit distutils-r1

DESCRIPTION="An implementation of JSON Schema validation for Python"
HOMEPAGE="https://github.com/Julian/jsonschema https://pypi.org/project/jsonschema/"
SRC_URI="https://files.pythonhosted.org/packages/5e/5c/3ca913d9cf27475ea231f79ee398af9b1082cbbb4f7e46c243446e7fe169/jsonschema-4.3.1.tar.gz
"

DEPEND="
	>=dev-python/attrs-17.4.0[${PYTHON_USEDEP}]
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	dev-python/pyrsistent[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/jsonschema-4.3.1"