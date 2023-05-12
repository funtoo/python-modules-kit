# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="push to and pull from a Git repository using Mercurial"
HOMEPAGE="https://hg-git.github.io  https://pypi.org/project/hg-git/"
SRC_URI="https://files.pythonhosted.org/packages/6f/ac/78a739bb37cf0f70db9cf115263b4e30daf5e35551d48a2a881d6b8894a4/hg-git-1.0.2.tar.gz -> hg-git-1.0.2.tar.gz
"

DEPEND="${RDEPEND}"
RDEPEND="
	>=dev-python/dulwich-0.19.0[${PYTHON_USEDEP}]
	>=dev-vcs/mercurial-4.3[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="*"
S="${WORKDIR}/hg-git-1.0.2"