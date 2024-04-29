# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Fast, simple object-to-object and broadcast signaling"
HOMEPAGE="None https://pypi.org/project/blinker/"
SRC_URI="https://files.pythonhosted.org/packages/06/7a/876838c7a478e3a487fb890c821ded320a321a56471bb2c751b566b84767/blinker-1.8.1.tar.gz -> blinker-1.8.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/blinker-1.8.1"