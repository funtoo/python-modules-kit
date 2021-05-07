# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy{,3} )
inherit distutils-r1

DESCRIPTION="A Python implementation of RFC 3986 including validation and authority parsing"
HOMEPAGE="http://rfc3986.readthedocs.io/ https://pypi.org/project/rfc3986/"
SRC_URI="https://files.pythonhosted.org/packages/79/30/5b1b6c28c105629cc12b33bdcbb0b11b5bb1880c6cfbd955f9e792921aa8/rfc3986-1.5.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/rfc3986-1.5.0"