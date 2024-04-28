# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Fast, simple object-to-object and broadcast signaling"
HOMEPAGE="None https://pypi.org/project/blinker/"
SRC_URI="https://files.pythonhosted.org/packages/4e/de/df5112127fdb2d0ebfd64e506bee284581bbde969d1639cbb0288735af54/blinker-1.8.0.tar.gz -> blinker-1.8.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/blinker-1.8.0"