# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="push to and pull from a Git repository using Mercurial"
HOMEPAGE="https://hg-git.github.io  https://pypi.org/project/hg-git/"
SRC_URI="https://files.pythonhosted.org/packages/0e/93/bd997d9f33be0946d8bf602badf8e009997e784645d763d61496c038008c/hg-git-0.9.0.tar.gz"

DEPEND="${RDEPEND}"
RDEPEND="
	>=dev-vcs/mercurial-4.3[${PYTHON_USEDEP}]
	>=dev-python/dulwich-0.19.0[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="*"

S="${WORKDIR}/hg-git-${PV}"