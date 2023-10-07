# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="A library for working with the color formats defined by HTML and CSS."
HOMEPAGE=" https://pypi.org/project/webcolors/"
SRC_URI="https://files.pythonhosted.org/packages/9f/e0/d3838acaa6f287726d30f31acc4aba5dd515cfb495be2f4e62653feed0a1/webcolors-1.10.tar.gz -> webcolors-1.10.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/webcolors-1.9 "
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/webcolors-1.10"

post_src_install() {
	rm -rf ${D}/usr/bin
}