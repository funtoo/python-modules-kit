# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/23/a2/97899f6bd0e873fed3a7e67ae8d3a08b21799430fb4da15cfedf10d6e2c2/iniconfig-1.1.1.tar.gz
"

DEPEND=""
RDEPEND=""
BDEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/iniconfig-1.1.1"