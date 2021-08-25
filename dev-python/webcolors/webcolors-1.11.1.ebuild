# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="A library for working with color names and color values formats defined by HTML and CSS."
HOMEPAGE="https://github.com/ubernostrum/webcolors https://pypi.org/project/webcolors/"
SRC_URI="https://files.pythonhosted.org/packages/a7/df/b97bf02a97bbd5ed874fec7c5418bf0dd51e8d042ac46bbf2bf5983e89fd/webcolors-1.11.1.tar.gz
"

DEPEND="dev-python/six[${PYTHON_USEDEP}]"
RDEPEND=""

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="BSD 3-Clause"
KEYWORDS="*"

S="${WORKDIR}/webcolors-1.11.1"