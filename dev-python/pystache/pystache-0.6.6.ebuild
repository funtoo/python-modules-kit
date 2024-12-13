# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Mustache for Python"
HOMEPAGE="None https://pypi.org/project/pystache/"
SRC_URI="https://files.pythonhosted.org/packages/a0/ef/5161c6f10162aff6ad4a1d2b65dd171a8506acbaec0b01054b9198242a62/pystache-0.6.6.tar.gz -> pystache-0.6.6.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pystache-0.6.6"