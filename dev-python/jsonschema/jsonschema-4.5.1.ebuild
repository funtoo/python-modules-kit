# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="autostub"
inherit distutils-r1

DESCRIPTION="An implementation of JSON Schema validation for Python"
HOMEPAGE=" https://pypi.org/project/jsonschema/"
SRC_URI="https://files.pythonhosted.org/packages/9e/62/93a54db0e44c4de57868a7d638d7a8abce113c8bc43a20b10b1109b2a517/jsonschema-4.5.1.tar.gz -> jsonschema-4.5.1.tar.gz
"

DEPEND="
	>=dev-python/attrs-17.4.0[${PYTHON_USEDEP}]
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	dev-python/pyrsistent[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/jsonschema-4.5.1"