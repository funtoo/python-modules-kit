# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Canonical source for classifiers on PyPI (pypi.org)."
HOMEPAGE="https://github.com/pypa/trove-classifiers https://pypi.org/project/trove-classifiers/"
SRC_URI="https://files.pythonhosted.org/packages/1e/8e/7551fc3e3810a529d410e78507e879aedfad2387e8c06c98e98e0c3a710e/trove-classifiers-2024.2.23.tar.gz -> trove-classifiers-2024.2.23.tar.gz"

DEPEND="dev-python/calver[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/trove-classifiers-2024.2.23"