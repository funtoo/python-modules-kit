# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://github.com/MagicStack/uvloop https://pypi.org/project/uvloop/"
SRC_URI="https://files.pythonhosted.org/packages/ba/86/6dda1760481abf244cbd3908b79a4520d757040ca9ec37a79fc0fd01e2a0/uvloop-0.17.0.tar.gz -> uvloop-0.17.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="Apache-2.0 MIT"
KEYWORDS="*"
S="${WORKDIR}/uvloop-0.17.0"