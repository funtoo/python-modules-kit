# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Canonical source for classifiers on PyPI (pypi.org)."
HOMEPAGE="https://github.com/pypa/trove-classifiers https://pypi.org/project/trove-classifiers/"
SRC_URI="https://files.pythonhosted.org/packages/4b/d1/8b03fea03e24628678a9808c49269256484597a0f2b9c5c52d83519e2521/trove-classifiers-2023.5.22.tar.gz -> trove-classifiers-2023.5.22.tar.gz
"

DEPEND="dev-python/calver[${PYTHON_USEDEP}]"
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/trove-classifiers-2023.5.22"