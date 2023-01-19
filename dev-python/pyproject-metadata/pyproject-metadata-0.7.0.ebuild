# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/pyproject-metadata/"
SRC_URI="https://files.pythonhosted.org/packages/ec/49/3616e3b9cf59b50f4c7488316ba99b8adcabfaab11360811797dc8dc5e95/pyproject-metadata-0.7.0.tar.gz -> pyproject-metadata-0.7.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/packaging[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyproject-metadata-0.7.0"