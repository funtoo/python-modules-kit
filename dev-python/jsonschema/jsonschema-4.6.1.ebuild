# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="autostub"
inherit distutils-r1

DESCRIPTION="An implementation of JSON Schema validation for Python"
HOMEPAGE=" https://pypi.org/project/jsonschema/"
SRC_URI="https://files.pythonhosted.org/packages/42/d9/bfc795bb02d0cee772f7b339c5aa6fdd8778e852951e62603556d6143fbc/jsonschema-4.6.1.tar.gz
"

DEPEND="
	>=dev-python/attrs-17.4.0[${PYTHON_USEDEP}]
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	dev-python/pyrsistent[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/jsonschema-4.6.1"