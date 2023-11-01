# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Tornado is a Python web framework and asynchronous networking library, originally developed at FriendFeed."
HOMEPAGE="http://www.tornadoweb.org/ https://pypi.org/project/tornado/"
SRC_URI="https://files.pythonhosted.org/packages/59/4b/2c992ec4feb904471125702ed1dd3c912de1630c03bd555c3b05a41da93e/tornado-5.0.tar.gz -> tornado-5.0.tar.gz"

DEPEND=""
RDEPEND="!<www-servers/tornado-6.1 
	dev-python/pycurl[${PYTHON_USEDEP}]
	dev-python/twisted[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/tornado-5.0"

post_src_install() {
	rm -rf ${D}/usr/bin
}