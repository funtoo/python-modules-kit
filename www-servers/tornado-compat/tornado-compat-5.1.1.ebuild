# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Tornado is a Python web framework and asynchronous networking library, originally developed at FriendFeed."
HOMEPAGE="http://www.tornadoweb.org/ https://pypi.org/project/tornado/"
SRC_URI="https://files.pythonhosted.org/packages/e6/78/6e7b5af12c12bdf38ca9bfe863fcaf53dc10430a312d0324e76c1e5ca426/tornado-5.1.1.tar.gz -> tornado-5.1.1.tar.gz
"

DEPEND=""
RDEPEND="!<www-servers/tornado-6.1 
	dev-python/pycurl[${PYTHON_USEDEP}]
	dev-python/twisted[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/tornado-5.1.1"

post_src_install() {
	rm -rf ${D}/usr/bin
}