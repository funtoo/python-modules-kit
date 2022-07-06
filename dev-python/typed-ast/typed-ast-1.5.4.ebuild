# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="a fork of Python 2 and 3 ast modules with type comment support"
HOMEPAGE="https://github.com/python/typed_ast https://pypi.org/project/typed-ast/"
SRC_URI="https://files.pythonhosted.org/packages/07/d2/d55702e8deba2c80282fea0df53130790d8f398648be589750954c2dcce4/typed_ast-1.5.4.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/typed_ast-1.5.4"