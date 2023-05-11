# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="SVG path objects and parser"
HOMEPAGE="https://github.com/regebro/svg.path https://pypi.org/project/svg.path/"
SRC_URI="https://files.pythonhosted.org/packages/33/a0/4983cdedf62c3a1dd42b698813312fc51dd159983333fce9ec4189cd83a9/svg.path-6.3.tar.gz -> svg.path-6.3.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/svg.path-6.3"