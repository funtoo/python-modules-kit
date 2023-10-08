# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="ANSI escape character sequences for colored terminal text & cursor positioning"
HOMEPAGE="https://github.com/tartley/colorama https://pypi.org/project/colorama/"
SRC_URI="https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz -> colorama-0.4.6.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/colorama-0.4.6-r1 "
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/colorama-0.4.6"

post_src_install() {
	rm -rf ${D}/usr/bin
}