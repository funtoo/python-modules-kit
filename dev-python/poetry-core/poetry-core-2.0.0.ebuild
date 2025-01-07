# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Poetry PEP 517 Build Backend"
HOMEPAGE="https://github.com/python-poetry/poetry-core https://pypi.org/project/poetry-core/"
SRC_URI="https://files.pythonhosted.org/packages/db/ec/dbd9cedc8b68309f1f4c0160355890b4f65f51901b31b1831dbf8c93d6c0/poetry_core-2.0.0.tar.gz -> poetry_core-2.0.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/attrs[${PYTHON_USEDEP}]
	dev-python/jsonschema[${PYTHON_USEDEP}]
	dev-python/lark[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/pyparsing[${PYTHON_USEDEP}]
	dev-python/pyrsistent[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/tomlkit[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="next"
S="${WORKDIR}/poetry_core-2.0.0"