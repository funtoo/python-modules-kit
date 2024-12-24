# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Mustache for Python"
HOMEPAGE="None https://pypi.org/project/pystache/"
SRC_URI="https://files.pythonhosted.org/packages/e3/e3/62df01d808819e28d7bd3a560e06c69dc31db60a9cd1ea03531d392d810c/pystache-0.6.7.tar.gz -> pystache-0.6.7.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pystache-0.6.7"