# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="push to and pull from a Git repository using Mercurial"
HOMEPAGE="https://hg-git.github.io  https://pypi.org/project/hg-git/"
SRC_URI="https://files.pythonhosted.org/packages/8b/a5/95aacce3114d1fc012c6ac9d530df9b9c3e62f06066078fcbb20888872eb/hg-git-0.10.2.tar.gz
"

DEPEND="${RDEPEND}"
RDEPEND="
	>=dev-vcs/mercurial-4.3[${PYTHON_USEDEP}]
	>=dev-python/dulwich-0.19.0[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="*"

S="${WORKDIR}/hg-git-0.10.2"