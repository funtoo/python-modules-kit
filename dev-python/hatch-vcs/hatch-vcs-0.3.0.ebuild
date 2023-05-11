# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Hatch plugin for versioning with your preferred VCS"
HOMEPAGE=" https://pypi.org/project/hatch-vcs/"
SRC_URI="https://files.pythonhosted.org/packages/04/33/b68d68e532392d938472d16a03e4ce0ccd749ea31b42d18f8baa6547cbfd/hatch_vcs-0.3.0.tar.gz -> hatch_vcs-0.3.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/hatch_vcs-0.3.0"