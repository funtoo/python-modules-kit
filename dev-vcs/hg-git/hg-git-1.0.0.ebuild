# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="push to and pull from a Git repository using Mercurial"
HOMEPAGE="https://hg-git.github.io  https://pypi.org/project/hg-git/"
SRC_URI="https://files.pythonhosted.org/packages/8c/db/7f7f3482c67e707bb6a34737e91556174a315a48e065223a8ee127bbb4d1/hg-git-1.0.0.tar.gz
"

DEPEND="${RDEPEND}"
RDEPEND="
	>=dev-vcs/mercurial-4.3[${PYTHON_USEDEP}]
	>=dev-python/dulwich-0.19.0[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="*"

S="${WORKDIR}/hg-git-1.0.0"