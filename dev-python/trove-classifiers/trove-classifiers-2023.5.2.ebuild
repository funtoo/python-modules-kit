# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Canonical source for classifiers on PyPI (pypi.org)."
HOMEPAGE="https://github.com/pypa/trove-classifiers https://pypi.org/project/trove-classifiers/"
SRC_URI="https://files.pythonhosted.org/packages/33/75/4e87c5021949ece4171eddebb11ef30d7e787a99c4d24c7dc383dd306a6c/trove-classifiers-2023.5.2.tar.gz -> trove-classifiers-2023.5.2.tar.gz
"

DEPEND="dev-python/calver[${PYTHON_USEDEP}]"
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/trove-classifiers-2023.5.2"