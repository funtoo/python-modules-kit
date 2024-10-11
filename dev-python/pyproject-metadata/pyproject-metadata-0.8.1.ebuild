# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="PEP 621 metadata parsing"
HOMEPAGE="None https://pypi.org/project/pyproject-metadata/"
SRC_URI="https://files.pythonhosted.org/packages/fa/24/47dc876eacddcf7125fe59cd26b064530c7e58655dae87f6928bf47aabaf/pyproject_metadata-0.8.1.tar.gz -> pyproject_metadata-0.8.1.tar.gz
"

DEPEND=""
RDEPEND="dev-python/packaging[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyproject_metadata-0.8.1"