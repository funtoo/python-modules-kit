# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pypa/trove-classifiers https://pypi.org/project/trove-classifiers/"
SRC_URI="https://files.pythonhosted.org/packages/69/be/3500c501317f61cc76b5b67b3d79a8ea5f804ab322411434bf4ee2408ec5/trove-classifiers-2023.4.25.tar.gz -> trove-classifiers-2023.4.25.tar.gz
"

DEPEND="dev-python/calver[${PYTHON_USEDEP}]"
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/trove-classifiers-2023.4.25"