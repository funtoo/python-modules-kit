# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="setuptools_scm plugin for git archives"
HOMEPAGE="https://github.com/Changaco/setuptools_scm_git_archive/ https://pypi.org/project/setuptools-scm-git-archive/"
SRC_URI="https://files.pythonhosted.org/packages/69/5f/7135eec07395c51d3dd6899251b277405ecc2f8f7a80ef80a483e3c5a2bd/setuptools_scm_git_archive-1.4.tar.gz -> setuptools_scm_git_archive-1.4.tar.gz
"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/setuptools_scm_git_archive-1.4"