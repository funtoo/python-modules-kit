# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="A library for working with the color formats defined by HTML and CSS."
HOMEPAGE="None https://pypi.org/project/webcolors/"
SRC_URI="https://files.pythonhosted.org/packages/c3/ac/f09dba195203627a626ee298f8649e5705d3f7f3b89ef09f524b9aa50443/webcolors-1.9.tar.gz -> webcolors-1.9.tar.gz"

DEPEND=""
RDEPEND="!<dev-python/webcolors-1.9 "
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/webcolors-1.9"

post_src_install() {
	rm -rf ${D}/usr/bin
}