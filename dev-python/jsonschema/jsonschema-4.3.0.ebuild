# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="autostub"
inherit distutils-r1

DESCRIPTION="An implementation of JSON Schema validation for Python"
HOMEPAGE="https://github.com/Julian/jsonschema https://pypi.org/project/jsonschema/"
SRC_URI="https://files.pythonhosted.org/packages/bc/fe/b6abb45f1336458a4b9c86697c4f012fd62e92b22c73762935e3d68238db/jsonschema-4.3.0.tar.gz
"

DEPEND="
	>=dev-python/attrs-17.4.0[${PYTHON_USEDEP}]
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	dev-python/pyrsistent[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/jsonschema-4.3.0"