# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION="A tiny CSS parser"
HOMEPAGE="None https://pypi.org/project/tinycss2/"
SRC_URI="https://files.pythonhosted.org/packages/75/be/24179dfaa1d742c9365cbd0e3f0edc5d3aa3abad415a2327c5a6ff8ca077/tinycss2-1.2.1.tar.gz -> tinycss2-1.2.1.tar.gz"

DEPEND=""
RDEPEND="dev-python/webencodings[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/tinycss2-1.2.1"