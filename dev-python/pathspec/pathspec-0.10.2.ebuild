# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/cpburnz/python-pathspec https://pypi.org/project/pathspec/"
SRC_URI="https://files.pythonhosted.org/packages/a2/29/959c72e1a6c3c25eaa46b9bfcc7fd401f65af83163d4796af09272c83c8a/pathspec-0.10.2.tar.gz -> pathspec-0.10.2.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pathspec-0.10.2"