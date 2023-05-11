# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy{,3} )
inherit distutils-r1

DESCRIPTION="A Python implementation of RFC 3986 including validation and authority parsing"
HOMEPAGE="http://rfc3986.readthedocs.io/ https://pypi.org/project/rfc3986/"
SRC_URI="https://files.pythonhosted.org/packages/85/40/1520d68bfa07ab5a6f065a186815fb6610c86fe957bc065754e47f7b0840/rfc3986-2.0.0.tar.gz -> rfc3986-2.0.0.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/rfc3986-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/rfc3986-2.0.0"