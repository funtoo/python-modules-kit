# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/python-poetry/poetry-core https://pypi.org/project/poetry-core/"
SRC_URI="https://files.pythonhosted.org/packages/b1/a1/8f88872af29e6efd0ff5bf44a92d5882cd50fd8e106e6ebf655cdd0097f1/poetry-core-1.3.1.tar.gz -> poetry-core-1.3.1.tar.gz
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
KEYWORDS="*"
S="${WORKDIR}/poetry-core-1.3.1"