# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/untitaker/python-atomicwrites https://pypi.org/project/atomicwrites/"
SRC_URI="https://files.pythonhosted.org/packages/55/8d/74a75635f2c3c914ab5b3850112fd4b0c8039975ecb320e4449aa363ba54/atomicwrites-1.4.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/atomicwrites-1.4.0"