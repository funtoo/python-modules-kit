# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="a fork of Python 2 and 3 ast modules with type comment support"
HOMEPAGE="https://github.com/python/typed_ast https://pypi.org/project/typed-ast/"
SRC_URI="https://files.pythonhosted.org/packages/f9/7e/a424029f350aa8078b75fd0d360a787a273ca753a678d1104c5fa4f3072a/typed_ast-1.5.5.tar.gz -> typed_ast-1.5.5.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/typed_ast-1.5.5"