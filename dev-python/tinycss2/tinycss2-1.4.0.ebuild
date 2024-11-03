# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION="A tiny CSS parser"
HOMEPAGE="None https://pypi.org/project/tinycss2/"
SRC_URI="https://files.pythonhosted.org/packages/7a/fd/7a5ee21fd08ff70d3d33a5781c255cbe779659bd03278feb98b19ee550f4/tinycss2-1.4.0.tar.gz -> tinycss2-1.4.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/webencodings[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/tinycss2-1.4.0"