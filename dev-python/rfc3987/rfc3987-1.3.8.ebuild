# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Parsing and validation of URIs (RFC 3986) and IRIs (RFC 3987)"
HOMEPAGE="http://pypi.python.org/pypi/rfc3987 https://pypi.org/project/rfc3987/"
SRC_URI="https://files.pythonhosted.org/packages/14/bb/f1395c4b62f251a1cb503ff884500ebd248eed593f41b469f89caa3547bd/rfc3987-1.3.8.tar.gz
"

DEPEND=""
RDEPEND="dev-python/regex[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="GPL-3"
KEYWORDS="*"

S="${WORKDIR}/rfc3987-1.3.8"