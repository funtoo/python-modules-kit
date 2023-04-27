# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/astroid/"
SRC_URI="https://files.pythonhosted.org/packages/36/50/c2bde258f4b8021ee9075932ace925245a1ad9a816a0cab269f04f480c3b/astroid-2.15.4.tar.gz -> astroid-2.15.4.tar.gz
"

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
S="${WORKDIR}/astroid-2.15.4"