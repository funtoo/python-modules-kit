# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Canonical source for classifiers on PyPI (pypi.org)."
HOMEPAGE="https://github.com/pypa/trove-classifiers https://pypi.org/project/trove-classifiers/"
SRC_URI="https://files.pythonhosted.org/packages/de/49/24c1cae3acdd6876c7770da36547b349b93908a34a67d68ef99eca0daf75/trove-classifiers-2023.9.19.tar.gz -> trove-classifiers-2023.9.19.tar.gz
"

DEPEND="dev-python/calver[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/trove-classifiers-2023.9.19"