# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python AST that abstracts the underlying Python version"
HOMEPAGE="https://github.com/serge-sans-paille/gast/ https://pypi.org/project/gast/"
SRC_URI="https://files.pythonhosted.org/packages/3c/14/c566f5ca00c115db7725263408ff952b8ae6d6a4e792ef9c84e77d9af7a1/gast-0.6.0.tar.gz -> gast-0.6.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/gast-0.6.0"