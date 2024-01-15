# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="push to and pull from a Git repository using Mercurial"
HOMEPAGE="https://hg-git.github.io  https://pypi.org/project/hg-git/"
SRC_URI="https://files.pythonhosted.org/packages/7f/90/258c9e55c78ab7c8c2b0937e4741c6536f67e23b8a3105ceab8c20e81c15/hg-git-1.1.0.tar.gz -> hg-git-1.1.0.tar.gz"

DEPEND="${RDEPEND}"
RDEPEND="
	>=dev-vcs/mercurial-4.3[${PYTHON_USEDEP}]
	>=dev-python/dulwich-0.19.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="*"
S="${WORKDIR}/hg-git-1.1.0"