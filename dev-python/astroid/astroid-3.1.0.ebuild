# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Abstract Syntax Tree for logilab packages"
HOMEPAGE=" https://pypi.org/project/astroid/"
SRC_URI="https://files.pythonhosted.org/packages/a9/b9/f11533eed9b65606fb02f1b0994d8ed0903358bc55a6b9759e42f1134725/astroid-3.1.0.tar.gz -> astroid-3.1.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/lazy-object-proxy[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/typed-ast[${PYTHON_USEDEP}]
	dev-python/wrapt[${PYTHON_USEDEP}]
	test? ( dev-python/nose[${PYTHON_USEDEP}] dev-python/numpy[${PYTHON_USEDEP}] dev-python/pytest[${PYTHON_USEDEP}] dev-python/python-dateutil[${PYTHON_USEDEP}] )"
IUSE="test"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/astroid-3.1.0"