# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A platform independent file lock."
HOMEPAGE="None https://pypi.org/project/filelock/"
SRC_URI="https://files.pythonhosted.org/packages/e6/76/3981447fd369539aba35797db99a8e2ff7ed01d9aa63e9344a31658b8d81/filelock-3.16.0.tar.gz -> filelock-3.16.0.tar.gz
"

DEPEND="dev-python/hatch-vcs[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/filelock-3.16.0"