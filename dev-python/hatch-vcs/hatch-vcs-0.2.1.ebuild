# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/hatch-vcs/"
SRC_URI="https://files.pythonhosted.org/packages/b2/f1/cc27eae1a873b75d82cdda78119c2c02fd2c0a2dda7bc716b160a057721e/hatch_vcs-0.2.1.tar.gz -> hatch_vcs-0.2.1.tar.gz
"

DEPEND=""
RDEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/hatch_vcs-0.2.1"