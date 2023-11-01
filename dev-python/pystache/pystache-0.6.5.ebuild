# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Mustache for Python"
HOMEPAGE=" https://pypi.org/project/pystache/"
SRC_URI="https://files.pythonhosted.org/packages/4d/6f/e3d8ec5c636dc69a6dadd27674addc8abf5627c927d3cbcd853b3ba9093d/pystache-0.6.5.tar.gz -> pystache-0.6.5.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pystache-0.6.5"