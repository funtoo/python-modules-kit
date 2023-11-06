# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Hatch plugin for versioning with your preferred VCS"
HOMEPAGE=" https://pypi.org/project/hatch-vcs/"
SRC_URI="https://files.pythonhosted.org/packages/f5/c9/54bb4fa27b4e4a014ef3bb17710cdf692b3aa2cbc7953da885f1bf7e06ea/hatch_vcs-0.4.0.tar.gz -> hatch_vcs-0.4.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/hatch_vcs-0.4.0"