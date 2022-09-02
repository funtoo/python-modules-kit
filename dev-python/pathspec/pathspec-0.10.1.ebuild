# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/cpburnz/python-pathspec https://pypi.org/project/pathspec/"
SRC_URI="https://files.pythonhosted.org/packages/24/9f/a9ae1e6efa11992dba2c4727d94602bd2f6ee5f0dedc29ee2d5d572c20f7/pathspec-0.10.1.tar.gz -> pathspec-0.10.1.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pathspec-0.10.1"