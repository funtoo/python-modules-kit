# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )
inherit distutils-r1

DESCRIPTION="Portable network interface information."
HOMEPAGE="https://github.com/al45tair/netifaces https://pypi.org/project/netifaces/"
SRC_URI="https://files.pythonhosted.org/packages/a6/91/86a6eac449ddfae239e93ffc1918cf33fd9bab35c04d1e963b311e347a73/netifaces-0.11.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/netifaces-0.11.0"

src_prepare() {
	sed '/Disable hard links/,+5d' setup.py || die
	default
}
