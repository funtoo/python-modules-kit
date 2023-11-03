# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Generate and parse RFC 3339 timestamps"
HOMEPAGE="https://github.com/kurtraschke/pyRFC3339 https://pypi.org/project/pyRFC3339/"
SRC_URI="https://files.pythonhosted.org/packages/00/52/75ea0ae249ba885c9429e421b4f94bc154df68484847f1ac164287d978d7/pyRFC3339-1.1.tar.gz -> pyRFC3339-1.1.tar.gz"

DEPEND=""
RDEPEND="dev-python/pytz[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyRFC3339-1.1"