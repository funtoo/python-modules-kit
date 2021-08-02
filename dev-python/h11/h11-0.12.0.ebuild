# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A pure-Python, bring-your-own-I/O implementation of HTTP/1.1"
HOMEPAGE="https://github.com/python-hyper/h11 https://pypi.org/project/h11/"
SRC_URI="https://files.pythonhosted.org/packages/bd/e9/72c3dc8f7dd7874812be6a6ec788ba1300bfe31570963a7e788c86280cb9/h11-0.12.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/h11-0.12.0"