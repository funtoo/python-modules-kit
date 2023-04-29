# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pypa/trove-classifiers https://pypi.org/project/trove-classifiers/"
SRC_URI="https://files.pythonhosted.org/packages/c8/9b/8e1a88794d21abb90349c7d0decbee3efe31b4b74987c51d815fc5784c81/trove-classifiers-2023.4.29.tar.gz -> trove-classifiers-2023.4.29.tar.gz
"

DEPEND="dev-python/calver[${PYTHON_USEDEP}]"
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/trove-classifiers-2023.4.29"