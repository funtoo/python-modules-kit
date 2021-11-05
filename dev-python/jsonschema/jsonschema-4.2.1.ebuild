# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="autostub"
inherit distutils-r1

DESCRIPTION="An implementation of JSON Schema validation for Python"
HOMEPAGE="https://github.com/Julian/jsonschema https://pypi.org/project/jsonschema/"
SRC_URI="https://files.pythonhosted.org/packages/ff/09/fa40d16ddcce69fc79e264c9458ac5ae693586d5f4c552e1e11889bdf971/jsonschema-4.2.1.tar.gz
"

DEPEND="
	>=dev-python/attrs-17.4.0[${PYTHON_USEDEP}]
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	dev-python/pyrsistent[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/jsonschema-4.2.1"