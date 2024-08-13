# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION="A tiny CSS parser"
HOMEPAGE="None https://pypi.org/project/tinycss2/"
SRC_URI="https://files.pythonhosted.org/packages/44/6f/38d2335a2b70b9982d112bb177e3dbe169746423e33f718bf5e9c7b3ddd3/tinycss2-1.3.0.tar.gz -> tinycss2-1.3.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/webencodings[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/tinycss2-1.3.0"