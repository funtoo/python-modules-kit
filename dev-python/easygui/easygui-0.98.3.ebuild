# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="EasyGUI is a module for very simple, very easy GUI programming in Python.  EasyGUI is different from other GUI generators in that EasyGUI is NOT event-driven.  Instead, all GUI interactions are invoked by simple function calls."
HOMEPAGE="https://github.com/robertlugg/easygui https://pypi.org/project/easygui/"
SRC_URI="https://files.pythonhosted.org/packages/cc/ad/e35f7a30272d322be09dc98592d2f55d27cc933a7fde8baccbbeb2bd9409/easygui-0.98.3.tar.gz -> easygui-0.98.3.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/easygui-0.98.3"

src_prepare() {
	default
	touch ${S}/README.md
}
