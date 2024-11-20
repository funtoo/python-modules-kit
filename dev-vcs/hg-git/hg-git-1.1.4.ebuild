# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="push to and pull from a Git repository using Mercurial"
HOMEPAGE="https://hg-git.github.io  https://pypi.org/project/hg-git/"
SRC_URI="https://files.pythonhosted.org/packages/37/aa/b0ed86c43a8c9d77cb9de566e8e3dbd78b289e868bf51434a5131f85379e/hg_git-1.1.4.tar.gz -> hg_git-1.1.4.tar.gz
"

DEPEND="${RDEPEND}"
RDEPEND="
	>=dev-vcs/mercurial-4.3[${PYTHON_USEDEP}]
	>=dev-python/dulwich-0.19.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="*"
S="${WORKDIR}/hg_git-1.1.4"