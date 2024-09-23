# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A platform independent file lock."
HOMEPAGE="None https://pypi.org/project/filelock/"
SRC_URI="https://files.pythonhosted.org/packages/9d/db/3ef5bb276dae18d6ec2124224403d1d67bccdbefc17af4cc8f553e341ab1/filelock-3.16.1.tar.gz -> filelock-3.16.1.tar.gz
"

DEPEND="dev-python/hatch-vcs[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/filelock-3.16.1"