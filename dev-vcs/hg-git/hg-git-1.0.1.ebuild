# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://foss.heptapod.net/mercurial/hg-git https://pypi.org/project/hg-git/"
SRC_URI="https://files.pythonhosted.org/packages/e8/41/9a57a60d3585e7dce252b04c78a4e8d56560928a9caa341d3c3e7378c034/hg-git-1.0.1.tar.gz -> hg-git-1.0.1.tar.gz
"

DEPEND="${RDEPEND}"
RDEPEND="
	>=dev-vcs/mercurial-4.3[${PYTHON_USEDEP}]
	>=dev-python/dulwich-0.19.0[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="*"
S="${WORKDIR}/hg-git-1.0.1"