# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Canonical source for classifiers on PyPI (pypi.org)."
HOMEPAGE="https://github.com/pypa/trove-classifiers https://pypi.org/project/trove-classifiers/"
SRC_URI="https://files.pythonhosted.org/packages/16/14/55ceb59dabf95f554b5368fdabe8d370165a25f817a23d809ad6c87a0b06/trove_classifiers-2024.9.12.tar.gz -> trove_classifiers-2024.9.12.tar.gz
"

DEPEND="dev-python/calver[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/trove_classifiers-2024.9.12"