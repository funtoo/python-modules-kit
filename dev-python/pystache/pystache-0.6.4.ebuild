# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Mustache for Python"
HOMEPAGE=" https://pypi.org/project/pystache/"
SRC_URI="https://files.pythonhosted.org/packages/73/b3/af017cccea733d4f2b510b20ad095eda13e1b557ff95d44707b599403297/pystache-0.6.4.tar.gz -> pystache-0.6.4.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pystache-0.6.4"