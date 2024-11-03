# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="PEP 621 metadata parsing"
HOMEPAGE="None https://pypi.org/project/pyproject-metadata/"
SRC_URI="https://files.pythonhosted.org/packages/c0/79/406a9f56c435caaaca4a1c66397e4f63ecd48a72a6c4fc1d9ecdaac66acb/pyproject_metadata-0.9.0.tar.gz -> pyproject_metadata-0.9.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/packaging[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyproject_metadata-0.9.0"