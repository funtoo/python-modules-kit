# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="EasyGUI is a module for very simple, very easy GUI programming in Python.  EasyGUI is different from other GUI generators in that EasyGUI is NOT event-driven.  Instead, all GUI interactions are invoked by simple function calls."
HOMEPAGE="https://github.com/robertlugg/easygui https://pypi.org/project/easygui/"
SRC_URI="https://files.pythonhosted.org/packages/91/d1/817a117333850b85d2a31767c8be8120a8f9492432e7b4c9c1c17699c979/easygui-0.98.2.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/easygui-0.98.2"

src_prepare() {
	default
	touch ${S}/README.md
}
