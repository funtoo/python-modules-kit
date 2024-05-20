# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Abstract Syntax Tree for logilab packages"
HOMEPAGE="None https://pypi.org/project/astroid/"
SRC_URI="https://files.pythonhosted.org/packages/27/8f/79adb88627d194824decf7b9f4dde9e059b251a7b76809c99f4803be258e/astroid-3.2.2.tar.gz -> astroid-3.2.2.tar.gz"

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
S="${WORKDIR}/astroid-3.2.2"