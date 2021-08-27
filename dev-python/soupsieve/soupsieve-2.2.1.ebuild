# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A modern CSS selector implementation for Beautiful Soup."
HOMEPAGE="https://github.com/facelessuser/soupsieve https://pypi.org/project/soupsieve/"
SRC_URI="https://files.pythonhosted.org/packages/c8/3f/e71d92e90771ac2d69986aa0e81cf0dfda6271e8483698f4847b861dd449/soupsieve-2.2.1.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/soupsieve-2.2.1"