# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Canonical source for classifiers on PyPI (pypi.org)."
HOMEPAGE="https://github.com/pypa/trove-classifiers https://pypi.org/project/trove-classifiers/"
SRC_URI="https://files.pythonhosted.org/packages/44/e4/9de7cda4a03a996758fbdb7ddacc071b4c62fdcd645e0a1192a22e8c55c0/trove-classifiers-2024.1.8.tar.gz -> trove-classifiers-2024.1.8.tar.gz"

DEPEND="dev-python/calver[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/trove-classifiers-2024.1.8"